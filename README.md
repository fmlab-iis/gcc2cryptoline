# gcc2cryptoline
A tool translating GIMPLE to CryptoLine

GIMPLE is a IR(intermidiate representation) used in machine-independent optimization of GCC

The CryptoLine verifier is [here](https://github.com/fmlab-iis/cryptoline)

## Prerequisite
- cmake
- gcc
- gcc plugin dev header
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
You can see the `gcc2cryptoline.so`  under the `build` directory and how to use the plugin by looking at the `test/test.sh`



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


## How to use plugin to transform GIMPLE to Cryptoline
- add options when compile
  - `-fplugin=./gcc2cryptoline.so`: make sure the plugin path
  - `-fplugin-arg-gcc2cryptoline-func=${function name}`: target function name
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
### BibTeX
```
@inproceedings{Fu:2019:SCP:3319535.3354199,
 author = {Fu, Yu-Fu and Liu, Jiaxiang and Shi, Xiaomu and Tsai, Ming-Hsien and Wang, Bow-Yaw and Yang, Bo-Yin},
 title = {Signed Cryptographic Program Verification with Typed CryptoLine},
 booktitle = {Proceedings of the 2019 ACM SIGSAC Conference on Computer and Communications Security},
 series = {CCS '19},
 year = {2019},
 isbn = {978-1-4503-6747-9},
 location = {London, United Kingdom},
 pages = {1591--1606},
 numpages = {16},
 url = {http://doi.acm.org/10.1145/3319535.3354199},
 doi = {10.1145/3319535.3354199},
 acmid = {3354199},
 publisher = {ACM},
 address = {New York, NY, USA},
 keywords = {cryptographic programs, formal verification, model checking},
}
```
### ACM Ref Format
Yu-Fu Fu, Jiaxiang Liu, Xiaomu Shi, Ming-Hsien Tsai, Bow-Yaw Wang, and Bo-Yin Yang. 2019. Signed Cryptographic Program Verification with Typed CryptoLine. In Proceedings of the 2019 ACM SIGSAC Conference on Computer and Communications Security (CCS '19). ACM, New York, NY, USA, 1591-1606. DOI: https://doi.org/10.1145/3319535.3354199

## Reference
- [CryptoLine Verifier](https://github.com/fmlab-iis/cryptoline)
- [LLVM Dragonegg project](https://dragonegg.llvm.org/)
    - good source code to learn how to write a gcc plugin
- [GIMPLE documentation](https://gcc.gnu.org/onlinedocs/gccint/GIMPLE.html)
- [GCC plugin documentation](https://gcc.gnu.org/onlinedocs/gccint/Plugins.html#Plugins)

## TODO List
- [ ] Refactor
