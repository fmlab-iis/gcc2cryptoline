#!/bin/sh -x

if [ ! -e "gcc2cryptoline.so" ]; then
   echo "please build the plugin gcc2cryptoline first and copy the plugin here" >&2;
   exit 1;
fi

gcc \
    -fplugin=./gcc2cryptoline.so \
    -fplugin-arg-gcc2cryptoline-func=add \
    -fplugin-arg-gcc2cryptoline-dump \
    -O3 -c test.c

cat add.cl
