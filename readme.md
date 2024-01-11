### Script

1. start.spring.io
    - java 21, maven, sb 3.2.1
        - minimal web app
        - actuator
     
2. present basic java app with 1 endpoint & actuator

3. dockerize java app & dive into images
      - ubuntu
      - openjdk - deprecated container images -> adoptium OpenJDK -> temurin
      - amazoncoretto - java code on github: [here](https://github.com/corretto)
      - temurin
      - bellsoft - more downstairs
      - distroless - more downstairs

4. short description about java modules, jdeps & jlink

5. building images with jlink: distroless java base, liberica musl & glibc

6. building native image, explain what graalvm does and what happens in container
7. building mostly static native image
8. building fully static native image
9. building fully static native image with upx
10. conclusions
    - docker java:
      - underlying OS -> attack surface, debugging
      - java runtime + app classess || native executable -> CPU architecture, AOT
    - size matters for 1 download, but for 10000s downloads maybe cache matters more
10. QnA

### Sort docker images by size
```bash
docker images --format "{{.ID}}\t{{.Size}}\t{{.Repository}}" | sort -k 2 -h
```

### Distroless images
- minimal version of debian
- openjdk, from 21 - temurin
- glibc

### Bellsoft - [Image here](https://download.bell-sw.com/static/images/how-to-choose-optimal-java-image.jpg)
- alpine or own os - alpaquita
- bellsoft java
- improved musl & improved glibc

[Dmitry Chuyko](https://media.licdn.com/dms/image/D5603AQG0UOJWLE95SA/profile-displayphoto-shrink_800_800/0/1678731620380?e=1710374400&v=beta&t=DMFz7UxDtQFl4UQ-vcy5QMBpmbjPCVta7dmm-dxFFOw) 

### Articles

- Are distroless containers a perfect solution ? [Article](https://bell-sw.com/blog/distroless-containers-for-security-and-size/)
- Best linux distribution for server and cloud [Article](https://bell-sw.com/announcements/2022/06/29/linux-distributions-for-server-and-cloud-overview/)
- Piotr's Blog - CVE comparison between alpaquita, alpine & temurin - [Article](https://piotrminkowski.com/2023/11/07/slim-docker-images-for-java/) 
