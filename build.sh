#!/bin/bash

OTP_VERSION="${OTP_VERSION:-25.2.2}"

cat Dockerfile.$OTP_VERSION.header > Dockerfile
cat Dockerfile.common >> Dockerfile
docker buildx build --platform linux/amd64,linux/arm64 -t chrzaszcz/cimg-erlang:$OTP_VERSION .
