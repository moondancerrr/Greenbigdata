import json
import os
import sys

input_file_path = sys.argv[1]  # Replace with the path to your input file
output_directory = sys.argv[2]  # Use an existing directory named "data" for the output files

# Create the output directory if it doesn't exist
if not os.path.exists(output_directory):
    os.makedirs(output_directory)

# Load the JSON file
with open(input_file_path) as input_file:
   
   # Parse the entire JSON content and Iterate through each dictionary (entry)
   for entry in input_file:
     entry = json.loads(entry)
     entry_id = entry['id']
     if entry_id:
        
        # Create a file for each entry using its 'id' as the filename
        file_name = f"{entry_id}.json"
        file_path = os.path.join(output_directory, file_name)
        
        # Write the entry (dictionary) to its own JSON file
        with open(file_path, 'w') as json_file:
           json.dump(entry, json_file)





