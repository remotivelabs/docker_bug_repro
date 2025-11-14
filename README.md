# Reproduce bug with DockerCan and Docker v29

This is aimed to show an intermittent bug when using the DockerCan network plugin together with Docker v29.

## Instructions for Running

This is only available on Linux.

### Install DockerCan

To run this, you need to install DockerCan first:

Download the latest version of DockerCAN from https://releases.remotivelabs.com/#docker_can/

```bash
mkdir dockercan
tar xvf dockercan-VERSION.tar.gz -C dockercan
cd dockercan
make
cd ..
rm -rf dockercan
```

### Run the examples

There are two shell scripts here, one for bringing up two containers.