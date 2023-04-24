wget https://storage.googleapis.com/kubernetes-release/release/v1.22.2/bin/linux/amd64/kubectl
chmod +x kubectl && mv kubectl /usr/local/bin/

cd ~
wget https://github.com/digitalocean/doctl/releases/download/v1.92.0/doctl-1.92.0-linux-amd64.tar.gz
tar xf ~/doctl-1.92.0-linux-amd64.tar.gz
mv ~/doctl /usr/local/bin
