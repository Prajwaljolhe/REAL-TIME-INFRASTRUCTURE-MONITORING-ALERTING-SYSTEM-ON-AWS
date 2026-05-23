import boto3

sns = boto3.client('sns')

def lambda_handler(event, context):

    sns.publish(
        TopicArn='arn:aws:sns:us-east-1:200020100991:ai-alert-topic',
        Subject='Application Error Detected',
        Message='''
EC2 Instance Error Detected

Detected Error:
Student registration service failed

Action Taken:
Application restarted automatically

Status:
Recovered Successfully
'''
    )

    return {
        'statusCode': 200
    }