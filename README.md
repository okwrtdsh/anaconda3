<div align="center">
  <a href="https://hub.docker.com/r/okwrtdsh/anaconda3/"><img src="https://raw.githubusercontent.com/okwrtdsh/anaconda3/img/small.png"></a><br>
</div>

# anaconda3 [![](https://img.shields.io/docker/stars/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/pulls/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/automated/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/build/okwrtdsh/anaconda3.svg)](https://hub.docker.com/r/okwrtdsh/anaconda3/)
Anaconda3, Jupyter Notebook, OpenCV3, TensorFlow and Keras2 for Deep Learning

## Available tags
### Anaconda3, Jupyter, OpenCV3

| Tag | Size / Layers | CUDA Toolkit (Linux x86_64 / Windows x86_64) | CUDNN |
|:-:|:-:|:-:|:-:|
| `latest`, `cpu` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3.svg)](https://microbadger.com/images/okwrtdsh/anaconda3) | - | - |
| `10.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:10.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:10.0-cudnn7) | CUDA 10.0 ( >= 410.48 / 411.31 ) | 7 |
| `9.2-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:9.2-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:9.2-cudnn7) | CUDA 9.2 ( >= 396.26 / 397.44 ) | 7 |
| `9.1-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:9.1-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:9.1-cudnn7) | CUDA 9.1 ( >= 387.26 / 388.19 ) | 7 |
| `9.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:9.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:9.0-cudnn7) | CUDA 9.0 ( >= 384.81 / 385.54 ) | 7 |
| `8.0-cudnn6` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:8.0-cudnn6.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:8.0-cudnn6) | CUDA 8.0 ( >= 375.26 / 376.51 ) | 6 |

### Tensorflow

| Tag | Size / Layers | Base | Tensorflow |
|:-:|:-:|:-:|:-:|
| `tf-cpu`, `tf` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:tf-cpu.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:tf-cpu) | `cpu` | 1.12.0 |
| `tf-10.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:tf-10.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:tf-10.0-cudnn7) | `10.0-cudnn7` | 1.12.0 |
| `tf-9.2-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:tf-9.2-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:tf-9.2-cudnn7) | `9.2-cudnn7` | 1.12.0 |
| `tf-9.1-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:tf-9.1-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:tf-9.1-cudnn7) | `9.1-cudnn7` | 1.7.0 |
| `tf-9.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:tf-9.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:tf-9.0-cudnn7) | `9.0-cudnn7` | 1.7.0 |
| `tf-8.0-cudnn6` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:tf-8.0-cudnn6.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:tf-8.0-cudnn6) | `8.0-cudnn6` | 1.4.1 |

### Keras (Tensorflow Backend)

| Tag | Size / Layers | Base | Tensorflow | Keras |
|:-:|:-:|:-:|:-:|:-:|
| `keras-cpu`, `keras` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:keras-cpu.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:keras-cpu) | `tf-cpu` | 1.12.0 | 2.2.4 |
| `keras-10.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:keras-10.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:keras-10.0-cudnn7) | `tf-10.0-cudnn7` | 1.12.0 | 2.2.4 |
| `keras-9.2-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:keras-9.2-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:keras-9.2-cudnn7) | `tf-9.2-cudnn7` | 1.12.0 | 2.2.4 |
| `keras-9.1-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:keras-9.1-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:keras-9.1-cudnn7) | `tf-9.1-cudnn7` | 1.7.0 | 2.1.5 |
| `keras-9.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:keras-9.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:keras-9.0-cudnn7) | `tf-9.0-cudnn7` | 1.7.0 | 2.1.5 |
| `keras-8.0-cudnn6` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:keras-8.0-cudnn6.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:keras-8.0-cudnn6) | `tf-8.0-cudnn6` | 1.4.1 | 2.1.3 |

### Pytorch

| Tag | Size / Layers | Base | Pytorch |
|:-:|:-:|:-:|:-:|
| `pytorch-cpu`, `pytorch` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:pytorch-cpu.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:pytorch-cpu) | `cpu` | 1.0.0 |
| `pytorch-10.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:pytorch-10.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:pytorch-10.0-cudnn7) | `10.0-cudnn7` | 1.0.0 |
| `pytorch-9.2-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:pytorch-9.2-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:pytorch-9.2-cudnn7) | `9.2-cudnn7` | 1.0.0 |
| `pytorch-9.1-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:pytorch-9.1-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:pytorch-9.1-cudnn7) | `9.1-cudnn7` | 1.0.0 |
| `pytorch-9.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:pytorch-9.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:pytorch-9.0-cudnn7) | `9.0-cudnn7` | 1.0.0 |
| `pytorch-8.0-cudnn6` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:pytorch-8.0-cudnn6.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:pytorch-8.0-cudnn6) | `8.0-cudnn6` | 1.0.0 |

### Mxnet

| Tag | Size / Layers | Base | Mxnet |
|:-:|:-:|:-:|:-:|
| `mxnet-cpu`, `mxnet` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:mxnet-cpu.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:mxnet-cpu) | `cpu` | mxnet |
| `mxnet-10.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:mxnet-10.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:mxnet-10.0-cudnn7) | `10.0-cudnn7` | mxnet-cu100 |
| `mxnet-9.2-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:mxnet-9.2-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:mxnet-9.2-cudnn7) | `9.2-cudnn7` | mxnet-cu92 |
| `mxnet-9.1-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:mxnet-9.1-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:mxnet-9.1-cudnn7) | `9.1-cudnn7` | mxnet-cu91 |
| `mxnet-9.0-cudnn7` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:mxnet-9.0-cudnn7.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:mxnet-9.0-cudnn7) | `9.0-cudnn7` | mxnet-cu90 |
| `mxnet-8.0-cudnn6` | [![](https://images.microbadger.com/badges/image/okwrtdsh/anaconda3:mxnet-8.0-cudnn6.svg)](https://microbadger.com/images/okwrtdsh/anaconda3:mxnet-8.0-cudnn6) | `8.0-cudnn6` | mxnet-cu80 |


## How to Use

### CPU
1. Run with docker (image: `okwrtdsh/anaconda3:keras-cpu`)
```bash
$ docker run -v $(pwd):/src/notebooks -p 8888:8888 -td okwrtdsh/anaconda3:keras-cpu
```
2. Open `http://localhost:8888` in web browser

### GPU
1. Run with nvidia-docker (image: `okwrtdsh/anaconda3:keras-10.0-cudnn7`)
```bash
$ nvidia-docker run -v $(pwd):/src/notebooks -p 8888:8888 -td okwrtdsh/anaconda3:keras-10.0-cudnn7
```
2. Open `http://localhost:8888` in web browser

### CPU (docker-compose)
1. docker-compose.yml (image: `okwrtdsh/anaconda3:keras-cpu`)
```yml
version: '3'
services:
  jupyter:
    image: okwrtdsh/anaconda3:keras-cpu
    ports:
      - '8888:8888'
    volumes:
      - ./notebooks:/src/notebooks
```
2. Run with docker-compose
```bash
$ docker-compose up -d
```
3. Open `http://localhost:8888` in web browser

### GPU (docker-compose)
1. docker-compose.yml (image: `okwrtdsh/anaconda3:keras-10.0-cudnn7`)
```yml
version: '3'
services:
  jupyter:
    image: okwrtdsh/anaconda3:keras-10.0-cudnn7
    ports:
      - '8888:8888'
    volumes:
      - ./notebooks:/src/notebooks
```
2. Run with nvidia-docker
```bash
# Run with nvidia-docker-compose (nvidia-docker v1)
$ nvidia-docker-compose up -d
# Run with docker-compose (nvidia-docker v2)
$ docker-compose up -d
```
3. Open `http://localhost:8888` in web browser
