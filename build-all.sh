#!/bin/bash
main () {

  ./mvnw clean install

  docker build -f 0-Dockerfile-tiny-ubuntu -t tiny-ubuntu .
  docker build -f 1-Dockerfile-tiny-openjdk -t tiny-openjdk .
  docker build -f 2-Dockerfile-tiny-amazoncoretto -t tiny-amazoncoretto .
  docker build -f 3-Dockerfile-tiny-amazoncoretto-alpine -t tiny-amazoncoretto-alpine .
  docker build -f 4-Dockerfile-tiny-temurin -t tiny-temurin .
  docker build -f 5-Dockerfile-tiny-temurin-alpine -t tiny-temurin-alpine .
  docker build -f 6-Dockerfile-tiny-temurin-jre -t tiny-temurin-jre .
  docker build -f 7-Dockerfile-tiny-liberica-debian -t tiny-liberica-debian .
  docker build -f 8-Dockerfile-tiny-liberica-alpine -t tiny-liberica-alpine .
  docker build -f 9-Dockerfile-tiny-distroless -t tiny-distroless .
  docker build -f 10-Dockerfile-tiny-liberica-runtime-container-glibc -t tiny-runtime-glibc .
  docker build -f 11-Dockerfile-tiny-liberica-runtime-container-musl -t tiny-runtime-musl .
  docker build -f 12-Dockerfile-tiny-jlink-distroless-java-base -t tiny-distroless-base .
  docker build -f 13-Dockerfile-tiny-jlink-liberica-runtime-container-glibc -t tiny-alpaquita-base-glibc .
  docker build -f 14-Dockerfile-tiny-jlink-liberica-runtime-container-musl -t tiny-alpaquita-base-musl .


  ##native images
  docker build --build-arg path=native-images/tiny-dynamic -f 15-Dockerfile-tiny-native-dynamic -t tiny-native-dynamic .
  docker build --build-arg path=native-images/tiny-mostly-static -f 16-Dockerfile-tiny-native-mostly-static -t tiny-native-mostly-static .
  docker build --build-arg path=native-images/tiny-static -f 17-Dockerfile-tiny-native-static -t tiny-native-static .
  docker build --build-arg path=native-images/tiny-static -f 18-Dockerfile-tiny-native-static-upx -t tiny-native-static-upx .
}

# "$@" will expand to the script's arguments
time main "$@"
