#!/bin/sh

./mvnw -DskipTests -Pnative,mostly-static clean native:compile

docker build -t tiny-native-mostly-static -f Dockerfile-tiny-native-mostly-static .
