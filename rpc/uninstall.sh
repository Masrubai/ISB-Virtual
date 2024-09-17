docker stop rpc
docker rm rpc
docker image rm repocket/repocket:latest
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo rm -rf /var/lib/docker
echo "delete and remove rpc success"
