Auto instalation steps, save & runing rpc
```sh
wget -O - https://raw.githubusercontent.com/Masrubai/ISB-Virtual/main/rpc/install.sh | bash
```

Delete instalation steps - rpc
```sh
docker stop rpc
docker rm rpc
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo rm -rf /var/lib/docker
```
