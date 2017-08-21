#!/usr/bin/env bash -e

IMAGES=(
    j8m35p0
    r24b04p0
)

rultor-runtime() {
    docker build -t extsoft/rultor-runtime:$1 -f rultor/$1.dockerfile .
    docker push extsoft/rultor-runtime:$1
}

for image in ${IMAGES[@]}
do  
    echo -n "Do you want to rebuild '$image' image? [y/n]: "
    read answer
    if [ "$answer" == "y" ]; then
        set -x
        rultor-runtime ${image}
        set +x
    fi
done
