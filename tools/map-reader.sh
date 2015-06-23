#!/bin/bash

if [ ! -d ./maps ]; then
echo "create dir [maps]"
mkdir ./maps
fi

for i in tmx/*.tmx;
do
echo "$i => ${i%.tmx}.map" 
./reader $i maps/$(basename ${i%.tmx}).map; ./reader $i maps/$(basename ${i%.tmx}).map;
done

echo "done"

