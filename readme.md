# sort docker images by size
```bash
docker images --format "{{.ID}}\t{{.Size}}\t{{.Repository}}" | sort -k 2 -h
```


### Articles

- Are distroless containers a perfect solution ? [Article](https://bell-sw.com/blog/distroless-containers-for-security-and-size/)
- Best linux distribution for server and cloud [Article](https://bell-sw.com/announcements/2022/06/29/linux-distributions-for-server-and-cloud-overview/)
