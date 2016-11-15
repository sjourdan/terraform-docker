# Terraform (Docker Container)

[![Circle CI](https://circleci.com/gh/sjourdan/terraform-docker.svg?style=shield)](https://circleci.com/gh/sjourdan/terraform-docker)

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

This container exists because I need to easily and quickly switch between various specific versions of Terraform for different projects, and use the same linux binary whatever platform I'm using.

- [Terraform Homepage](https://www.terraform.io/) and [Releases](https://releases.hashicorp.com/terraform/).
- [Terraform on GitHub](https://github.com/hashicorp/terraform) and [Changelog](https://github.com/hashicorp/terraform/blob/master/CHANGELOG.md)

## Supported tags

-	[`0.7.10`, `latest` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.10/Dockerfile)
-	[`0.7.9` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.9/Dockerfile)
-	[`0.7.8` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.8/Dockerfile)
-	[`0.7.7` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.7/Dockerfile)
-	[`0.7.6` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.6/Dockerfile)
-	[`0.7.5` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.5/Dockerfile)
-	[`0.7.4` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.4/Dockerfile)
-	[`0.7.3` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.3/Dockerfile)
-	[`0.7.2` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.2/Dockerfile)
-	[`0.7.1` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.1/Dockerfile)
-	[`0.7.0` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.0/Dockerfile)
-	[`0.7.0-rc4` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.0-rc4/Dockerfile)
-	[`0.7.0-rc3` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.0-rc3/Dockerfile)
-	[`0.7.0-rc2` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.7.0-rc2/Dockerfile)
-	[~~`0.6.16`~~ (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.16/Dockerfile)
-	[`0.6.15` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.15/Dockerfile)
-	[`0.6.14` (*Dockerfile*)](https://github.com/sjourdan/terraform-docker/blob/0.6.14/Dockerfile)

## Usage

Usage is basically the following:

```
$ docker run -it --rm -v `pwd`:/data sjourdan/terraform:<version> <terraform sub-command>
```

For example, if for a project you need version `0.6.14`:

```
$ docker run -it --rm -v `pwd`:/data sjourdan/terraform:0.6.14
```

And for another project you need the later `0.6.15` version:

```
$ docker run -it --rm -v `pwd`:/data sjourdan/terraform:0.6.15
```

## Known Bugs

- `0.6.16` doesn't work because of [this issue](https://github.com/hashicorp/terraform/issues/6714)

## Build

```
$ make build
```

### Release Tags

The Docker Hub build is building versions across tags, so tag releases properly:

```
$ git tag <terraform version>
$ git push --tags
```
