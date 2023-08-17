# cloudfront-edge-functions-no-behaviors-set
# Description
Deploys our CloudFront Distribution with an S3 Bucket origin. Also deploys two Lambda functions meant to be configured as edge functions for customizing viewer response headers.

## Parameters
The list of parameters for this template:


## Resources
The list of resources this template creates:

### S3Bucket 
Type: AWS::S3::Bucket  
### IAMManagedPolicy 
Type: AWS::IAM::ManagedPolicy  
### CloudFrontDistribution 
Type: AWS::CloudFront::Distribution  
### CloudFrontOriginAccessControl 
Type: AWS::CloudFront::OriginAccessControl  
### LambdaFunction 
Type: AWS::Lambda::Function  
### LambdaFunction2 
Type: AWS::Lambda::Function  
### LambdaVersion 
Type: AWS::Lambda::Version  
### CustomLambdaVersion 
Type: AWS::Lambda::Version  
### IAMRole 
Type: AWS::IAM::Role  

## Outputs
The list of outputs this template exposes:

