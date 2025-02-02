# Build the Docker Image
# ----------------------
docker build -t ping-daemon .

# Run the Container in Detached Mode (Daemon Mode)
# ------------------------------------------------
docker run -d --name my-ping-daemon ping-daemon

# Check the Logs
# --------------
docker exec -it my-ping-daemon tail -f /var/log/ping.log

