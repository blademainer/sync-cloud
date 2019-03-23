#!/usr/bin/env bash
arch="${1:-arm}"
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
${SHELL_FOLDER}/build.sh "$arch"
version="v`date  +"%Y%m%d%H%M%s"`"
REPO=blademainer/xworks:client-${arch}-${version}
XY_TAG=${XY_REPO:-hub.xycloud.com/18504}/xworks:client-${arch}-${version}
docker build -f dockerfile-client -t $REPO -t ${XY_TAG} .
docker push $REPO
docker push ${XY_TAG}
