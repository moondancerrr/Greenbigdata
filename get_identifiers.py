import json

with open(sys.argv[1]) as f:
    for line in f:
        print(json.loads(line)['id'])

