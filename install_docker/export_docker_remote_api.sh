sudo tee /etc/docker/daemon.json <<-'EOF'  
{  "hosts": [ "tcp://0.0.0.0:2375", "fd://" ]  }  
EOF  
sudo sed -i 's/-H fd:////g' /etc/systemd/system/multi-user.target.wants/docker.service
