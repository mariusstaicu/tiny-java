#!/bin/bash
main () {

  ./mvnw clean install

  docker build -f Dockerfile-tiny-ubuntu -t tiny-ubuntu .
  docker build -f Dockerfile-tiny-openjdk -t tiny-openjdk .
  docker build -f Dockerfile-tiny-amazoncoretto -t tiny-amazoncoretto .
  docker build -f Dockerfile-tiny-amazoncoretto-alpine -t tiny-amazoncoretto-alpine .
  docker build -f Dockerfile-tiny-temurin -t tiny-temurin .
  docker build -f Dockerfile-tiny-temurin-alpine -t tiny-temurin-alpine .
  docker build -f Dockerfile-tiny-temurin-jre -t tiny-temurin-jre .
  docker build -f Dockerfile-tiny-liberica-debian -t tiny-liberica-debian .
  docker build -f Dockerfile-tiny-liberica-alpine -t tiny-liberica-alpine .
  docker build -f Dockerfile-tiny-distroless -t tiny-distroless .
  docker build -f Dockerfile-tiny-liberica-runtime-container-glibc -t tiny-runtime-glibc .
  docker build -f Dockerfile-tiny-liberica-runtime-container-musl -t tiny-runtime-musl .
  docker build -f Dockerfile-tiny-jlink-distroless-java-base -t tiny-distroless-base .
  docker build -f Dockerfile-tiny-jlink-liberica-runtime-container-glibc -t tiny-alpaquita-base-glibc .
  docker build -f Dockerfile-tiny-jlink-liberica-runtime-container-musl -t tiny-alpaquita-base-musl .


  ##native images
  docker build --build-arg path=native-images/tiny-dynamic -f Dockerfile-tiny-native-dynamic -t tiny-native-dynamic .
  docker build --build-arg path=native-images/tiny-mostly-static -f Dockerfile-tiny-native-mostly-static -t tiny-native-mostly-static .
  docker build --build-arg path=native-images/tiny-static -f Dockerfile-tiny-native-static -t tiny-native-static .
  docker build --build-arg path=native-images/tiny-static -f Dockerfile-tiny-native-static-upx -t tiny-native-static-upx .
}

# "$@" will expand to the script's arguments
time main "$@"
