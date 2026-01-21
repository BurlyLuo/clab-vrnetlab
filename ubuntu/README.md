# Ubuntu VM

To download a compatible image of the Ubuntu VM execute the [download.sh](download.sh) script that will download a cloud-init image of Ubuntu from <https://cloud-images.ubuntu.com>. The version is set in the script and can be changed manually.

Once the qcow2 image is downloaded, build the container with the following command:

```bash
make build
```

The resulting container will be tagged as `vrnetlab/vr-ubuntu:<version>`, e.g. `vrnetlab/vr-ubuntu:jammy`.

## Host requirements

* 1 vCPU, 512 MB RAM

## Configuration

Initial config is carried out via cloud-init.

* `9.9.9.9` configured as the DNS resolver. Change it with `resolvectl` if required.

## Image
```
[root@clab> ubuntu]# docker push 192.168.2.100:5000/ubuntu:2204
The push refers to repository [192.168.2.100:5000/ubuntu]
e67e171aca62: Pushed 
c1a76fe5f10e: Layer already exists 
63b2b42cfa5a: Layer already exists 
dc6a97ced1cb: Layer already exists 
2204: digest: sha256:410dc6097686c69a015b05e51bce826b9a14a294f1c0f3a76516a68a173e7f55 size: 1163
```
