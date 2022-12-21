cat Dockerfile.$1.header > Dockerfile
cat Dockerfile.common >> Dockerfile
docker build -t chrzaszcz/cimg-erlang:$1 .
