docker-spksrc
=============

Docker container for spksrc.
Spksrc is a cross compilation framework to create native packages for the Synology's NAS.

## Pulling the image

A prebuilt container is available in the docker index
```
docker pull bydavy/spksrc
```

or you could build the image yourself
```
sudo docker run -i -t ubuntu /bin/bash
```

## Usage

To run the container, do the following:
```
docker run -i -t -v /root/spksrc:<host_machine_spksrc_dir> bydavy/spksrc /bin/bash
~$ cd /root/spksrc/spk/transmission
~$ make arch-88f6281
```
Where \<host_machine_spksrc_dir\> is the directory of spksrc on your machine

For more information about spksrc go to https://github.com/SynoCommunity/spksrc

## Author
Davy Leggieri <bydavy@gmail.com>
