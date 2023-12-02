export COMPOSEVERISON=1.25.4
sudo curl -L "https://github.com/docker/compose/releases/download/${COMPOSEVERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /tmp/docker-compose
sudo chmod +x /tmp/docker-compose 
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
