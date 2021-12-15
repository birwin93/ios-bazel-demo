import json
import sys

with open(sys.argv[1]) as file:
    lines = file.readlines()
    for line in lines:
        data = json.loads(line)
        if "testResult" in data:
            test_result_data = data["testResult"]
            if "testActionOutput" in test_result_data:
                outputs = test_result_data["testActionOutput"]
                for output in outputs:
                    if output["name"] == "test.outputs__outputs.zip":
                        print(output["uri"]) # <- zipped xcresult bundles
            
