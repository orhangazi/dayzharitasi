#!/bin/bash

rm -rf tiles

export GDAL_ALLOW_LARGE_LIBJPEG_MEM_ALLOC=1

python=python

echo $1

case $1 in
  mpz)
    $python ../gdal2tiles-multiprocess.py -l -p raster -z 2-7 -w none ../../d.jpg ../../tiles
    ;;
  mp)
    $python ../gdal2tiles-multiprocess.py -l -p raster -w none ../../d.jpg ../../tiles
    ;;
  z)
    $python ../gdal2tiles.py -l -p raster -w none ../../d.jpg -z 2-7 ../../tiles
    ;;
  *)
    $python ../gdal2tiles.py -l -p raster -w none ../../d.jpg ../../tiles
    ;;
esac
