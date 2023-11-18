#setup container runtime
# Update the app index, add Docker's offical gpg key, and set up the apt repo
sudo apt-get update
sudo apt-get update
sudo apt-get install \
ca-certificates \
curl \
gnupg \
lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Install docker engine and containerd.io:
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker ps
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
sudo systemctl restart containerd
