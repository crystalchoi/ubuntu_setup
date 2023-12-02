export VERSION=19.03.7 && curl -sSL https://get.docker.com/ | sh
sudo systemctl start docker
sudo usermod -aG docker crystal
docker version
