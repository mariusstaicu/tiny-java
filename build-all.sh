#!/bin/bash

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

