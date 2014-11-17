docker-spksrc
=============

Docker container for spksrc.
Spksrc is a cross compilation framework to create native packages for the Synology's NAS.

## Usage

To run the container, do the following:
```
docker run -it --rm -v <host_machine_spksrc_dir>:/spksrc bydavy/spksrc
~$ cd /spksrc/spk/transmission
~$ make arch-88f6281
```
Where \<host_machine_spksrc_dir\> is the directory of spksrc on your machine

For more information about spksrc go to https://github.com/SynoCommunity/spksrc

## Author
Davy Leggieri <bydavy@gmail.com>
