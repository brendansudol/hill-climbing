`TODO: improve this README!`

```
# build docker image
docker build -t bren_hill_climbing .

# run docker container
# (mount your current host directory into the container's filesystem)
docker run -p 8888:8888 \
  -v "$(pwd)":/home/jovyan/work \
  --env-file .env \
  bren_hill_climbing

# To view/edit notebooks, go to: http://localhost:8888
```
