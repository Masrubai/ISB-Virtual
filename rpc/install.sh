#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
mkdir repocket
cd repocket

docker pull repocket/repocket:latest &
pid=$!

# Tunggu hingga proses dengan PID $pid selesai
wait $pid

echo "Proses pull selesai"
touch rp.env
echo "RP_EMAIL=masrubai@gmail.com" > rp.env
echo "RP_API_KEY=04f6b7f2-228a-4948-85bf-017151afdbd2" >> rp.env
docker run --name rpc --env-file rp.env -d --restart=always repocket/repocket
