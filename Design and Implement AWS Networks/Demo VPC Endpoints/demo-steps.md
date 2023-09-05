# Demo VPC Endpoints

> NOTE: These steps are not necessarily in exact order. They are strictly for reference.

## Bucket Policy Examples

### Full Public Read Access

```json
{
  "Version": "2012-10-17",
  "Id": "Policy1415115909152",
  "Statement": [
    {
      "Sid": "Stmt1690289455945",
      "Effect": "Allow",
      "Principal": "*",
      "Action": ["s3:Get*, s3:List*"],
      "Resource": ["arn:aws:s3:::<bucketName>", "arn:aws:s3:::<bucketName>/*"]
    }
  ]
}
```

### VPCe Access Restrictions

```json
{
  "Version": "2012-10-17",
  "Id": "Policy1415115909153",
  "Statement": [
    {
      "Sid": "Access-to-specific-VPCE-only",
      "Principal": "*",
      "Action": "s3:*",
      "Effect": "Deny",
      "Resource": ["arn:aws:s3:::<bucketName>", "arn:aws:s3:::<bucketName>/*"],
      "Condition": {
        "StringNotEquals": {
          "aws:SourceVpce": "<vpc-endpoint-id>"
        }
      }
    }
  ]
}
```

## High-level Steps for Demo

This MD file contains the high-level list of steps that were taken within the demo. Some steps may differ slightly than recorded.

## Steps

### Upload test file to S3

Be sure to upload a test file to your S3 bucket for testing download access.

### Show the routes for the instance

route

### Run a traceroute to view network path

sudo traceroute -n -T -p 443 <bucket-endpoint>

### Download object from bucket via WGET

wget https://<bucketName>.s3.amazonaws.com/<yourTestFile>

### Download object from bucket via AWS CLI

aws s3 cp s3://<bucketName>/<yourTestFile>

### Traceroute to S3 after VPCe Gateway

sudo traceroute -n -T -p 443 s3.amazonaws.com

### MacOS Curl

curl https://<bucketName>.s3.amazonaws.com/<yourTestFile> -o ans_guide.pdf

### Delete bucket policy

aws s3api delete-bucket-policy --bucket <bucketName>

### List S3 buckets

aws s3 ls --profile cloud_user

### List S3 bucket

aws s3 ls <bucketName> --profile cloud_user

### Run a traceroute to view network path

sudo traceroute -n -T -p 443 <bucketName>.s3.amazonaws.com

### Download object from bucket via WGET on EC2

wget https://<bucketName>.s3.amazonaws.com/<yourTestFile>

### List S3 bucket

aws s3 ls <bucketName> --profile cloud_user

### Get Object and save locally

aws s3 cp s3://<bucketName>/<yourTestFile> .

### Put in Bucket Policy

Copy paste that

### Test again

Test access
