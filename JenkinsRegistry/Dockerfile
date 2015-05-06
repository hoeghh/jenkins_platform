FROM registry

MAINTAINER Henrik Hoegh <heh@praqma.net>

# Settings for a registry that stores its files to the local filesystem
ENV SETTINGS_FLAVOR local
ENV STORAGE_PATH /opt/registry

# Enabling search for the private registry
ENV SEARCH_BACKEND sqlalchemy
ENV SQLALCHEMY_INDEX_DATABASE sqlite:////opt/index/docker-registry.db

# The data volumes
VOLUME /data/registry /opt/index
