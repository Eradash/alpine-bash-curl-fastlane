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
    bash \
    && rm -rf /tmp/* /var/tmp/* \
    && echo 'gem: --no-document' > /etc/gemrc

RUN gem install bundler

RUN gem install fastlane -N

#ENTRYPOINT ["/usr/bin/curl"]