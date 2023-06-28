sudo yum install -y docker
sudo systemctl enable docker
sudo systemctl start docker

sudo groupadd docker
sudo usermod -aG docker $USER
sudo chown root:docker /var/run/docker.sock
sudo chown -R root:docker /var/run/docker

sudo docker run -d --name ctf -v /home/ansible/ctf-nxos-ansible:/ctf:z robbeck/nxos_ctf:1.0
sudo docker exec -it ctf bash
