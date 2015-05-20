./zetta-docker-machine create  \
  --driver openstack  \
  --openstack-flavor-id 6  \
  --openstack-image-id d0a89aa8-9644-408d-a023-4dcc1148ca01  \
  --openstack-ssh-user ubuntu  \
  --openstack-sec-groups default,DockerAPI  \
  --openstack-floatingip-pool Public  \
  --openstack-net-id be63ef5c-0656-42e5-9f80-8754ff9fcb23 \
praqmatest3
