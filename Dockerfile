FROM python:3.8-bullseye AS build
ARG dev

RUN ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime
RUN apt-get update && apt-get install -y libgl1
# install paddle 2.3.2 cpu-openblas-noavx
RUN curl -OL https://paddle-wheel.bj.bcebos.com/2.3.2/linux/linux-cpu-openblas-noavx/paddlepaddle-2.3.2-cp38-cp38-linux_x86_64.whl && \
    pip install -U paddlepaddle-2.3.2-cp38-cp38-linux_x86_64.whl
RUN if [[ ! -z "$dev" ]]; then \
      pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip setuptools wheel; \
      pip install -i https://pypi.tuna.tsinghua.edu.cn/simple paddleocr==2.6.0; \
    else \
      pip install --upgrade pip setuptools wheel; \
      pip install paddleocr==2.6.0; \
    fi

ENTRYPOINT paddleocr
CMD -h
