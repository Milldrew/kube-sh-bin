sudo kubeadm reset -f
sudo apt-get remove -y kubelet kubeadm kubectl kubernetes-cni
sudo apt-get autoremove -y
sudo rm -rf /etc/kubernetes
sudo rm -rf $HOME/.kube/config
which kubeadm
which kubectl
which kubelet
which kubernetes-cni
