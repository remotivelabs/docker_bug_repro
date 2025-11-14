# Reproduce bug with DockerCan and Docker v29

This is aimed to show an intermittent bug when using the DockerCan network plugin together with Docker v29.

## Instructions for Running

This is only available on Linux.

### Install DockerCan

To run this, you need to install can-utils and DockerCan first:

`can-utils` can be installed with apt:

```bash
sudo apt install can-utils
```

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

Just run `up.sh` to create the networks and run the containers. It doesn't fail every time, so you might need to to try it a few times.

Use `down.sh` to tear down everything between runs.

Example
```bash
$ ./up.sh
4a4ffa17d4c1a8d9bee541c30c7c05e5187720b4f219589a3d8e7d6fe89ea983
ac0ecee48dbd1296484a5f021bbea95cf9957fa1a448d3a204d560eaace3c56a
597e31414fd91c1b7acea1d67df78cab507dbb89ad5e15cccb293c1923bebfd9
docker: Error response from daemon: failed to set up container networking: updating external connectivity for IPv4 endpoint 2185f1296056: driver failed programming external connectivity on endpoint gateway_823ca16850f6 (2185f129605621adf73b6bb806da3b16f03356b69b3e39fa628092822aaf79cf): endpoint not found: 2185f129605621adf73b6bb806da3b16f03356b69b3e39fa628092822aaf79cf
```

