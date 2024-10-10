import glob
import os
import hashlib
import json
import gzip
import sys

dirname = sys.argv[1] 
output_directory = sys.argv[3]

identifiers = sys.argv[2]
identifiers_list = []
# Create the output directory if it doesn't exist
os.makedirs(output_directory, exist_ok=True)

for i in range(0x10000):  # 0x10000 is 65536 in decimal, covering all from 0000 to ffff
    bucket_name = f"{i:04x}.json"
    bucket_path = os.path.join(output_directory, bucket_name)
    with open(bucket_path, 'w') as f:
        json.dump({}, f)

def radix(string):
    md5 = hashlib.md5(string.encode("ascii")).hexdigest()
    return md5[:4]
# Dictionary to hold the full document data
fulldoc = dict()

# Process each JSON file in the directory
for fname in glob.glob(f"{dirname}/*.json"):
    with open(fname) as f:
        gene = json.load(f)
        if len(gene['seq'])<801: continue
    geneid = gene.pop("id")
    identifiers_list.append(geneid)
    
    # Calculate the bucket name using the radix function
    bucket = radix(geneid)
    
    # Add the gene data to the fulldoc dictionary
    fulldoc[geneid] = gene
    
    # Determine the output file name based on the bucket
    output_fname = f"{bucket}.json"
    
    # Save the full document into the corresponding bucket
    with open(os.path.join(output_directory, output_fname), "r+") as f:
        existing_data = json.load(f)
        existing_data.update(fulldoc)
        f.seek(0)
        json.dump(existing_data, f) 

    # Reset the fulldoc dictionary for the next gene
    fulldoc = dict()

with open(identifiers, 'w') as log_f:
   for geneid in identifiers_list:
      log_f.write(geneid + '\n')
