#!/usr/bin/env bash -ex

IMAGES=(j8m35p0)

rultor-runtime() {
    docker build -t extsoft/rultor-runtime:$1 -f rultor/$1.dockerfile .
    docker push extsoft/rultor-runtime:$1
}

for image in ${IMAGES}
do
    rultor-runtime ${image}
done