# docker-openswitch-builder
## Build docker image

``` 
$ docker build -t ops-builder .
```

## Run a ops-builder instance
```
$ docker run -d -v:/tmp/image/:/tmp/ops-builder/image/ ops-builder 0.2.0 as5712

# docker run -d -v:{where you want to store image}:/tmp/ops-bilder/image \ 
  ops-builder {OPS_VERSION} {PLATFORM}
```
