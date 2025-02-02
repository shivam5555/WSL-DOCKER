docker build -t simple-daemon .
docker run -d --name my-daemon simple-daemon
docker exec -it my-daemon tail -f /var/log/daemon.log

