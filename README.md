# Terraform (Docker)

[![Circle CI](https://circleci.com/gh/sjourdan/terraform-docker.svg?style=shield)](https://circleci.com/gh/sjourdan/terraform-docker)

## Supported tags

-	[`0.6.16` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.16/Dockerfile)
-	[`0.6.15` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.15/Dockerfile)
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
