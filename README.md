# anaconda3 [![](https://img.shields.io/docker/stars/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/pulls/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/automated/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/build/okwrtdsh/anaconda3.svg)](https://hub.docker.com/r/okwrtdsh/anaconda3/)
Anaconda3, Jupyter Notebook, OpenCV3, TensorFlow and Keras2 for Deep Learning

## Available tags
### Anaconda3, Jupyter, OpenCV3

| Tag | CUDA Toolkit (Linux x86_64 Driver / Windows x86_64 Driver) | CUDNN |
|:-:|:-:|:-:|
| `latest`, `cpu` | - | - |
| `9.2-cudnn7` | CUDA 9.2 ( >= 396.26 / 397.44 ) | 7 |
| `9.1-cudnn7` | CUDA 9.1 ( >= 387.26 / 388.19 ) | 7 |
| `9.0-cudnn7` | CUDA 9.0 ( >= 384.81 / 385.54 ) | 7 |
| `8.0-cudnn7` | CUDA 8.0 (8.0.61 GA2) ( >= 375.26 / 376.51 ), (8.0.44) ( >= 367.48 / 369.30 ) | 7 |
| `8.0-cudnn6` | CUDA 8.0 (8.0.61 GA2) ( >= 375.26 / 376.51 ), (8.0.44) ( >= 367.48 / 369.30 ) | 6 |

### Tensorflow

| Tag | Base | Tensorflow |
|:-:|:-:|:-:|
| `tf-cpu`, `tf` | `cpu` | 1.8 |
| `tf-9.2-cudnn7` | `9.2-cudnn7` | 1.8 |
| `tf-9.1-cudnn7` | `9.1-cudnn7` | 1.7 |
| `tf-9.0-cudnn7` | `9.0-cudnn7` | 1.7 |
| `tf-8.0-cudnn7` | `8.0-cudnn7` | 1.7 |
| `tf-8.0-cudnn6` | `8.0-cudnn6` | 1.7 |

### Keras (Tensorflow Backend)

| Tag | Base | Tensorflow | Keras |
|:-:|:-:|:-:|:-:|
| `keras-cpu`, `keras` | `tf-cpu` | 1.8 | 2.2.0 |
| `keras-9.2-cudnn7` | `tf-9.2-cudnn7` | 1.8 | 2.2.0 |
| `keras-9.1-cudnn7` | `tf-9.1-cudnn7` | 1.7 | 2.1.6 |
| `keras-9.0-cudnn7` | `tf-9.0-cudnn7` | 1.7 | 2.1.6 |
| `keras-8.0-cudnn7` | `tf-8.0-cudnn7` | 1.7 | 2.1.6 |
| `keras-8.0-cudnn6` | `tf-8.0-cudnn6` | 1.7 | 2.1.6 |

### Pytorch

| Tag | Base | Pytorch |
|:-:|:-:|:-:|
| `pytorch-cpu`, `pytorch` | `cpu` | 0.4.0 |
| `pytorch-9.2-cudnn7` | `9.2-cudnn7` | 0.4.0 |
| `pytorch-9.1-cudnn7` | `9.1-cudnn7` | 0.4.0 |
| `pytorch-9.0-cudnn7` | `9.0-cudnn7` | 0.4.0 |
| `pytorch-8.0-cudnn7` | `8.0-cudnn7` | 0.4.0 |
| `pytorch-8.0-cudnn6` | `8.0-cudnn6` | 0.4.0 |

## How to Use

### CPU
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

### GPU
1. docker-compose.yml (image: `okwrtdsh/anaconda3:keras-9.2-cudnn7`)
```yml
version: '3'
services:
  jupyter:
    image: okwrtdsh/anaconda3:keras-9.2-cudnn7
    ports:
      - '8888:8888'
    volumes:
      - ./notebooks:/src/notebooks
```
2. Run with nvidia-docker-compose
```bash
$ nvidia-docker-compose up -d
```
3. Open `http://localhost:8888` in web browser
