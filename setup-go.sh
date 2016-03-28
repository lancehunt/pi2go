sudo apt-get update -y
sudo apt-get upgrade -y
    
sudo apt-get install -y git
sudo apt-get install -y vim
   
curl http://dave.cheney.net/paste/go-linux-arm-bootstrap-c788a8e.tbz | tar xj
curl https://storage.googleapis.com/golang/go1.5.src.tar.gz | tar xz
ulimit -s 1024
ulimit -s

env GO_TEST_TIMEOUT_SCALE=10 GOROOT_BOOTSTRAP=$HOME/go-linux-arm-bootstrap ./make.bash

echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$PATH:$GOPATH" >> ~/.bashrc
