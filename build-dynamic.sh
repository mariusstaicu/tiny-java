#!/bin/sh

./mvnw -DskipTests -Pnative clean native:compile

docker build -t tiny-native-dynamic -f 15-Dockerfile-tiny-native-dynamic .
