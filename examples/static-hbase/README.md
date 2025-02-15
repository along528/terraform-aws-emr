This example depends on an existing VPC and subnet with configurations that meet [EMR cluster requirements](https://aws.amazon.com/blogs/big-data/launching-and-running-an-amazon-emr-cluster-inside-a-vpc/).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| tls | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_name\_for\_logs | S3 bucket name for cluster logs. | `string` | n/a | yes |
| bucket\_name\_for\_root\_directory | S3 bucket name for storing root directory | `string` | n/a | yes |
| ingress\_cidr\_blocks | CIDR blocks to attach to security groups for ingress | `list(string)` | n/a | yes |
| name\_prefix | A string to prepend to names of the resources in the cluster | `string` | n/a | yes |
| subnet\_id | ID of the subnet where the EMR cluster will be created. If `abac_valid_tags` key values are set, this subnet is required to have a valid key value tag as well. | `string` | n/a | yes |
| vpc\_id | VPC ID of the network | `string` | n/a | yes |
| abac\_valid\_tags | Valid tags for maintaining resources when using ABAC IAM Policies with Tag Conditions. Make sure `tags` contain a key value specified here. | `map(list(string))` | `{}` | no |
| egress\_cidr\_blocks | CIDR blocks to attach to security groups for egress | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| tags | A map of tags to add to all resources created by this example. | `map(string)` | <pre>{<br>  "Author": "Tamr",<br>  "Environment": "Example"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster | n/a |
| ec2-key | n/a |
| logs-bucket | n/a |
| private-key | n/a |
| rootdir-bucket | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
