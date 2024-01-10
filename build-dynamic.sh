#!/bin/sh

./mvnw -DskipTests -Pnative clean native:compile

docker build -t tiny-native-dynamic -f Dockerfile-tiny-native-dynamic .
