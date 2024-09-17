#!/bin/bash
sudo apt update
sudo apt install docker.io
mkdir repocket
cd repocket

docker pull repocket/repocket:latest &
pid=$!

log_file="pull.log"

# Tunggu hingga proses selesai atau timeout setelah 5 menit
timeout 120s wait $pid > $log_file 2>&1

if [ $? -eq 0 ]; then
  echo "Proses pull selesai"
  touch rp.env
  echo "RP_EMAIL=masrubai@gmail.com" > rp.env
  echo "RP_API_KEY=04f6b7f2-228a-4948-85bf-017151afdbd2" >> rp.env
  docker run --env-file rp.env -d --restart=always repocket/repocket
else
  echo "Proses pull gagal. Lihat log: $log_file"
fi
