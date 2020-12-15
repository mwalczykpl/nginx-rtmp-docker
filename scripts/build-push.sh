#!/usr/bin/env bash

set -e

use_tag="ghcr.io/mwalczykpl/nginx-rtmp:$NAME"
use_dated_tag="${use_tag}-$(date -I)"

bash scripts/build.sh

docker tag "$use_tag" "$use_dated_tag"

docker push "$use_tag"
docker push "$use_dated_tag"
