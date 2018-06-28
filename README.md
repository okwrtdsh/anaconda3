# anaconda3 [![](https://img.shields.io/docker/stars/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/pulls/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/automated/okwrtdsh/anaconda3.svg)![](https://img.shields.io/docker/build/okwrtdsh/anaconda3.svg)](https://hub.docker.com/r/okwrtdsh/anaconda3/)
## How to Use

### CPU
1. docker-compose.yml (image: `okwrtdsh/anaconda3:lab`)
```yml
version: '3'
services:
  jupyter:
    image: okwrtdsh/anaconda3:lab
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
1. docker-compose.yml (image: `okwrtdsh/anaconda3:lab-gpu`)
```yml
version: '3'
services:
  jupyter:
    image: okwrtdsh/anaconda3:lab-gpu
    ports:
      - '8888:8888'
    volumes:
      - ./notebooks:/src/notebooks
```
2. run with nvidia-docker-compose
```bash
$ nvidia-docker-compose up -d
```
3. Open `http://localhost:8888` in web browser
