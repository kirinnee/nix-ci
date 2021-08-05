#! /bin/sh

tag="$1"

if [ "$tag" = '' ]; then
	tag="latest"
fi

docker build -t "nix-ci:${tag}" .
