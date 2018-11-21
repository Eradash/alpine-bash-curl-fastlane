# bash-curl-fastlane

[![Build Status](https://travis-ci.org/Eradash/alpine-bash-curl-fastlane.svg?branch=master)](https://travis-ci.org/Eradash/alpine-bash-curl-fastlane)
[![Image Size](https://images.microbadger.com/badges/image/eradash/alpine-bash-curl-fastlane.svg)](https://microbadger.com/images/eradash/alpine-bash-curl-fastlane)

This project takes an alpine docker image and adds some tools used in a Gitlab-CI. It produces a docker image on [Docker Hub] with the same name as this repo.

You can check the [Dockerfile] and the [travis.yml] file used to build this image. The result of the build job can be found [here](https://travis-ci.org/Eradash/alpine-bash-curl-fastlane).

## Tools added to Alpine:

* g++
* make
* ruby
* curl
* git
* bash
* openssh-client
* Fastlane
	*  [fastlane-plugin-changelog](https://github.com/Eradash/fastlane-plugin-changelog)

[Docker Hub]: https://hub.docker.com/r/eradash/android-docker/
[Dockerfile]: https://github.com/Eradash/alpine-bash-curl-fastlane/blob/master/Dockerfile
[travis.yml]: https://github.com/Eradash/alpine-bash-curl-fastlane/blob/master/.travis.yml
