# PaddleOCR

- [PaddleOCR](https://github.com/PaddlePaddle/PaddleOCR) v2.6.0
- [Paddle](https://github.com/PaddlePaddle/Paddle) v2.3.2 cpu-openblas-noavx

Reference:

- [Quick Install](https://www.paddlepaddle.org.cn/install/quick?docurl=/documentation/docs/zh/install/compile/linux-compile.html)
- [whl Release](https://www.paddlepaddle.org.cn/documentation/docs/zh/develop/install/Tables.html#whl-release)

Build on local, download `Dockerfile` then (use `linux/amd64` platform on Mac M1):

```sh
docker build --platform linux/amd64 -t paddleocr .
```

