# C2

ref ; https://github.com/cobbr/Covenant/wiki/Installation-And-Startup


```bash
sudo curl -sSL https://get.docker.com/ | sh

sudo apt install -y git

git clone --recurse-submodules https://github.com/cobbr/Covenant

docker build -t covenant /root/Covenant/Covenant/

docker run -d -p 7443:7443 -p 80:80 -p 443:443 --name covenant -v /root/Covenant/Covenant/Data/:/app/Data covenant

```