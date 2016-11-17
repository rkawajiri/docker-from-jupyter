# Run Docker from Jupyter on Docker

A simple example to run docker from Jupyter on docker.
This may be useful if you need to explain how to use docker when it is hard to use only README.md.

The magic is just mounting the host docker socket to guest container.
This way is commonly used when running docker from jenkins on docker.

# Usage

Launch jupyter by using docker compose. This may take long time for building a docker image.

```shell
$ docker-compose up
```

Open Exmaple.ipynb file from jupyter (typically http://localhost:8888/notebooks/Example.ipynb).
