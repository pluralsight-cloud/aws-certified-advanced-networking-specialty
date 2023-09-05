import boto3


def list_default_vpcs():
    ec2_client = boto3.client("ec2")
    regions = ec2_client.describe_regions()["Regions"]

    for region in regions:
        region_name = region["RegionName"]
        ec2_resource = boto3.resource("ec2", region_name=region_name)
        vpcs = list(
            ec2_resource.vpcs.filter(
                Filters=[{"Name": "isDefault", "Values": ["true"]}]
            )
        )

        for vpc in vpcs:
            print(f"Region: {region_name}, VPC ID: {vpc.id}")


if __name__ == "__main__":
    list_default_vpcs()
