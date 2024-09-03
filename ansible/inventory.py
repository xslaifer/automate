#!/usr/bin/env python
import json

def main():
    with open('../terraform_outputs.json') as f:
        outputs = json.load(f)

    inventory = {
        "webservers": {
            "hosts": [outputs["web_instance_ip"]]
        }
    }

    print(json.dumps(inventory, indent=2))

if __name__ == '__main__':
    main()
