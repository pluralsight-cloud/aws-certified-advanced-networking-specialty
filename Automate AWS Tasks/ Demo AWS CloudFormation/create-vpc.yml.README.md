# create-vpc

# Description

Create a VPC with private and public subnets using parameters

## Parameters

The list of parameters for this template:

### VpcCidr

Type: String
Default: 10.0.0.0/16
Description: CIDR block for the VPC

### SubnetMaskSize

Type: Number
Default: 8
Description: The size of the subnet CIDR that you want. (Example> '7' generates /25 ranges.)

## Resources

The list of resources this template creates:

### Vpc

Type: AWS::EC2::VPC

### PublicSubnet1

Type: AWS::EC2::Subnet

### PublicSubnet2

Type: AWS::EC2::Subnet

### PrivateSubnet1

Type: AWS::EC2::Subnet

### PrivateSubnet2

Type: AWS::EC2::Subnet

## Outputs

The list of outputs this template exposes:

### PrivateSubnetIds

Description: Private subnet IDs

### PrivateSubnetRanges

Description: Private subnet CIDR blocks

### PublicSubnetIds

Description: Public subnet CIDR blocks

### VpcId

Description: VPC ID
