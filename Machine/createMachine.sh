./docker-machine create  \
  --driver openstack  \
  --openstack-flavor-id 6  \
  --openstack-image-id 5178239d-6853-4da9-8934-53990db845ff  \
  --openstack-floatingip-pool Public  \
  --openstack-ssh-user core  \
  --openstack-net-id be63ef5c-0656-42e5-9f80-8754ff9fcb23 \
  --openstack-sec-groups default,DockerAPI  \
praqmatest2
