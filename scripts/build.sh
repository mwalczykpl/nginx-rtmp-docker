#!/usr/bin/env bash
set -e

use_tag="ghcr.io/mwalczykpl/nginx-rtmp:$NAME"

docker build -t "$use_tag" .
