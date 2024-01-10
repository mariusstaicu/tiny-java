#!/bin/sh

./mvnw -DskipTests -Pnative,mostly-static clean native:compile

docker build -t tiny-native-mostly-static -f 16-Dockerfile-tiny-native-mostly-static .
