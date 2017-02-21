FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=8.3.1

RUN gem install killbill --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["killbill-migration"]
CMD ["--help"]
