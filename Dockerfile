FROM alpine:latest
MAINTAINER Stephane Jourdan <sjourdan@greenalto.com>
ENV TERRAFORM_VERSION=0.6.14
VOLUME ["/data"]
WORKDIR /data
RUN apk --update --no-cache add \
  ca-certificates \
  unzip \
  wget && \
  wget -q -O terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" && \
  unzip terraform.zip -d /bin && \
  rm terraform.zip && \
  apk del --purge wget tar unzip && \
  rm -rf /var/cache/apk/*
ENTRYPOINT ["/bin/terraform"]
CMD [ "--help" ]
