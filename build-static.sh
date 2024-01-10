#!/bin/sh

set -e

TOOLCHAIN_DIR=`pwd`/x86_64-linux-musl-native
CC=${TOOLCHAIN_DIR}/bin/gcc
PATH=${TOOLCHAIN_DIR}/bin:${PATH}

./mvnw -DskipTests -Pnative,static clean native:compile

docker build -t tiny-native-static -f Dockerfile-tiny-native-static .
docker build -t tiny-native-static-upx -f Dockerfile-tiny-native-static-upx .
