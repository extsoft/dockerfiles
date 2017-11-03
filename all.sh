#!/usr/bin/env bash -e

IMAGES=(
    j8m35p0
    r24b04p0
    r24b04p0g2
)

rultor-runtime() {
    docker build -t extsoft/rultor-runtime:$1 -f rultor/$1.dockerfile .
    docker push extsoft/rultor-runtime:$1
}

select image in ${IMAGES[@]}
do  
    set -x
    rultor-runtime ${image}
    set +x
done
