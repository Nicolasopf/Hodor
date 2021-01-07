#!/bin/bash

prefix="socks4 "
file="proxys"
while read -r line
do
    echo "${prefix}$line"
done <$file > pproxy
mv pproxy $file
