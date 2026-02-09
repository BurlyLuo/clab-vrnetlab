VENDOR=Sonic
NAME=sonic-vs
IMAGE_FORMAT=qcow
IMAGE_GLOB=*.qcow2
IMAGE=sonic-202600208.qcow2

# match versions like:
VERSION=$(shell echo $(IMAGE) | sed -e 's/sonic-vs-//' | sed -e 's/.qcow2//')

-include ../makefile-sanity.include
-include ../makefile.include
