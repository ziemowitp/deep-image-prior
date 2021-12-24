# Deep image prior remix

This is a remix of great Deep Image Prior located here: https://github.com/DmitryUlyanov/deep-image-prior

This repository contains the following updates:

* Uses Ubuntu 20.04 image
* Latest CUDA
* Torch with Nvidia RTX 3090 support
* Setup without Conda
* Works with latest SK Image

## Docker image

Alternatively, you can use a Docker image that exposes a Jupyter Notebook with all required dependencies. To build this image ensure you have both [docker](https://www.docker.com/) and  [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) installed, then run

```
docker build -t deep-image-prior .
```

After the build you can start the container as

```
docker run --gpus all --rm -it --ipc=host -p 8888:8888 deep-image-prior
```

You will be provided an URL through which you can connect to the Jupyter notebook.
