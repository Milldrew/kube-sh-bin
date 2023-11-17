# update apt package index
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
# download google cloud public signing key and add the kubernetes apt repository by using the following command
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Add the Kubernetes apt repo
# This overwrites any existing configuration in /etc/apt/sources.list.d/kubernetes.list
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
# Update apt package index install kubectl kubelet and kubeadm
sudo apt-get update
sudo apt-get install -y kubectl kubelet kubeadm
# Pin the version of the utilities
sudo apt-mark hold kubelet kubeadm kubectl
