#! /bin/sh

image="$1"
binary="$2"
container_id=$(docker run -id "$image" "$binary")

cleanup() {
	echo "Clean up containers removing containers..."
	docker stop "${container_id}"
	docker rm "${container_id}"
}
trap cleanup EXIT

docker exec -ti "${container_id}" "$binary"
