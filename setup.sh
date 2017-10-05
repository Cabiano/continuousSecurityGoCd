docker run -d -p8153:8153 -p8154:8154 gocd/gocd-server:v17.5.0

docker run -itd -e GO_SERVER_URL=https://$(docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' zen_hopper):$(docker inspect --format='{{(index (index .NetworkSettings.Ports "8154/tcp") 0).HostPort}}' zen_hopper)/go gocd/gocd-agent-ubuntu-16.04:v17.5.0

git clone https://github.com/gocd-contrib/gomatic.git
