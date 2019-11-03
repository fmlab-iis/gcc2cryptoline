# gcc2cryptoline
A tool translating GIMPLE to Cryptoline

GIMPLE is a IR(intermidiate representation) used in machine-independent optimization of GCC

The CryptoLine verifier is [here](https://github.com/fmlab-iis/cryptoline)

## Prerequisite
- cmake
- gcc
- install gcc plugin dev header
  - ubuntu
    - `sudo apt-get install gcc-${version}-plugin-dev`

## Environment when developing
- cmake 3.5.1
- gcc 8.1.0
- ubuntu 16.04


## Use docker
```
docker build -t gcc2cryptoline .
docker run -it gcc2cryptoline
```
You can see the `gcc2cryptoline.so` under the `build` directory and how to use the plugin by looking at the `test/test.sh`



## Build the plugin
```
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
```
the plugin is `gcc2cryptoline.so`

## Run the experiment
- prerequisite
    - python3 > 3.6
        - need support of f string
        - package: toml
        - pip3 install -r requirements.txt
```bash
cd script
cp config-example.toml config.toml # edit config.toml
python3 run_experiments.py
```


## How to use the plugin to translate GIMPLE to CryptoLine
- add options when compile
  - `-fplugin=./gcc2cryptoline.so` : make sure the plugin path
  - `-fplugin-arg-gcc2cryptoline-func=${function name}` : target function name
  - `-fplugin-arg-gcc2cryptoline-dump`: will dump output to the ${function name}.cl
  - `-fpluin-arg-gcc2cryptoline-debug`: use when debugging
- take curve25519 as example
    ```

    gcc  \
    -fplugin=./gcc2cryptoline.so \
    -fplugin-arg-gcc2cryptoline-func=fe51_add \
    -fplugin-arg-gcc2cryptoline-dump \
    ${some other flags need to compile curve25519.c} -O3 \
    -c curve25519.c

    ```
    You can see the corresponding result in `examples/openssl/curve25519/fe51_add.cl`



## Dump GIMPLE
- add options when compile
  - c like format:	`-fdump-tree-optimized`
  - raw format:		`-fdump-tree-optimized-raw`

## Citation
Wait for publisher version

See [CryptoLine](https://github.com/fmlab-iis/cryptoline)'s Reference section


## Reference
- [CryptoLine Verifier](https://github.com/fmlab-iis/cryptoline)
- [LLVM Dragonegg project](https://dragonegg.llvm.org/)
    - good source code to learn how to write a gcc plugin
- [GIMPLE documentation](https://gcc.gnu.org/onlinedocs/gccint/GIMPLE.html)
- [GCC plugin documentation](https://gcc.gnu.org/onlinedocs/gccint/Plugins.html#Plugins)


## TODO List
- [ ] Refactor
