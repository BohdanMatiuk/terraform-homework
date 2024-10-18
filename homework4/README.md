## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.72.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.homework](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.homework](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_security_group.allow_tls](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs


Create terraform.tfvars file with following content:

region = ""

availability_zone = ""

ami_id = ""

To Launch EC2 instances in spesific region please provide values ""

example:

region = "us-east-2"

availability_zone = "us-east-2a"

ami_id = "ami-050cd642fd83388e4" 

-Run terraform init to initialize working directory

-Run terraform apply to create resources


| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | n/a | `string` | `"ami-050cd642fd83388e4"` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | n/a | `string` | `"us-east-2a"` | no |
| <a name="input_c0unt"></a> [c0unt](#input\_c0unt) | n/a | `number` | `1` | no |
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | n/a | `string` | `"homework-key"` | no |
| <a name="input_port"></a> [port](#input\_port) | n/a | `list` | <pre>[<br/>  22,<br/>  80,<br/>  443<br/>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"us-east-2"` | no |

## Outputs

No outputs.

