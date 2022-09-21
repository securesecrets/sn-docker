# SN Docker COmpose deployment for the SN-Docker-Compose project
This repository allows us to deploy the SN-Docker-ENV project using a Docker Compose Script on a server.

Once you have compose installed on the server, you can run the following command to deploy the project:

```
sudo docker compose up -d
```


Got get HTTPS installed just use Caddy and the Caddyfile in the root of the server.

1. Install Caddy https://caddyserver.com/docs/install
2. Copy the Caddyfile attached to this message to /etc/caddy/Caddyfile
3. Run `sudo caddy start --config /etc/caddy/Caddyfile`