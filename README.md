# Terraform (Docker Container)

[![Circle CI](https://circleci.com/gh/sjourdan/terraform-docker.svg?style=shield)](https://circleci.com/gh/sjourdan/terraform-docker)

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

This container exists because I need to easily and quickly switch between various specific versions of Terraform for different projects. 

- [Terraform Homepage](https://www.terraform.io/)
- [Terraform on GitHub](https://github.com/hashicorp/terraform)

## Supported tags

-	[~~`0.6.16`~~ (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.16/Dockerfile)
-	[`0.6.15`, `latest` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.15/Dockerfile)
-	[`0.6.14` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.14/Dockerfile)

## Usage

Easy:

```
$ docker run -it --rm -v `pwd`:/data sjourdan/terraform:<version>
```

## Known Bugs

- `0.6.16` doesn't work because of [this issue](https://github.com/hashicorp/terraform/issues/6714)

## Build

```
$ make build
```
