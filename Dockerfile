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

RUN export LC_ALL=en_US.UTF-8 \
    export LANG=en_US.UTF-8

RUN gem install bundler

RUN gem install fastlane -N

COPY Gemfile Gemfile

RUN bundle install