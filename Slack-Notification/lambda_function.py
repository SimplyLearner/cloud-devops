import json
import os
import urllib3

# Read environment variables
SLACK_WEBHOOK_URL = os.environ['SLACK_WEBHOOK_URL']


def lambda_handler(event, context):
    http = urllib3.PoolManager()
    #data = {"text": "Code Pipeline status change occured, please check"}
    report = "CodePipeline status: "+ str(event["detail"]["state"]) + "\n Pipeline Name: "+ str(event["detail"]["pipeline"])
    data = {"text": report}
    r = http.request("POST",
                    SLACK_WEBHOOK_URL,
                    body = json.dumps(data),
                    headers = {"Content-Type":"application/json"})