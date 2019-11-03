FROM gcc:8.1.0
RUN apt-get update && \
    apt-get install -y cmake libgmp3-dev libmpc-dev && \
    rm -rf /var/lib/apt/lists/*

ADD . /gcc2cryptoline

WORKDIR  /gcc2cryptoline

RUN rm -rf build && mkdir build

WORKDIR /gcc2cryptoline/build

RUN cmake -DCMAKE_BUILD_TYPE=Release /gcc2cryptoline

RUN make

WORKDIR /gcc2cryptoline

RUN cp /gcc2cryptoline/build/gcc2cryptoline.so /gcc2cryptoline/test

WORKDIR /gcc2cryptoline/test

RUN ./test.sh

WORKDIR /gcc2cryptoline

CMD ["bash"]
