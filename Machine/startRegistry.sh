# TODO
# Check if theres a registry on the host
# If so, delete it with :
# docker rm praqmaRegistry
#
# docker run --name "praqmaRegistry" -v /mnt/praqmaRegistry:/tmp/registry-dev -d -p 5000:5000 registry:0.9.1
#
docker run --name "praqmaRegistry" -d -p 5000:5000 registry:2.0
