FROM alpine:latest

RUN apk update && apk upgrade

RUN apk add --update --no-cache \
    g++ \
    make \
    ruby \
    ruby-irb \
    ruby-dev \
    curl \
    git \
    bash

RUN rm -rf /tmp/* /var/tmp/*

RUN echo 'gem: --no-document' > /etc/gemrc

RUN gem install bundler

RUN gem install fastlane -N

#ENTRYPOINT ["/usr/bin/curl"]