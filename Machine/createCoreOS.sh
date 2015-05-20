./zetta-docker-machine create  \
  --driver openstack  \
  --openstack-flavor-id 6  \
  --openstack-image-id 5178239d-6853-4da9-8934-53990db845ff  \
  --openstack-ssh-user core  \
  --openstack-sec-groups default,DockerAPI  \
  --openstack-floatingip-pool Public  \
  --openstack-net-id be63ef5c-0656-42e5-9f80-8754ff9fcb23 \
praqmatestCoreOS
