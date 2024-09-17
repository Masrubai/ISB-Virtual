Auto instalation steps, save & runing rpc
```sh
wget -O - https://raw.githubusercontent.com/Masrubai/ISB-Virtual/main/rpc/install.sh | bash
```

Delete instalation steps - rpc
```sh
docker stop rpc
docker rm rpc
docker image rm repocket/repocket:latest
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo rm -rf /var/lib/docker
```
