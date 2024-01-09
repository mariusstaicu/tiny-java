# sort docker images by size
```bash
docker images --format "{{.ID}}\t{{.Size}}\t{{.Repository}}" | sort -k 2 -h
```
