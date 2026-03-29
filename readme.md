1. `git clone https://github.com/Azhar-k/walleto-deploy.git`
2. `sudo snap install docker`
3. `cd walleto-deploy/`
4. Update `set-env.sh` and set `HOST_IP` to your server's public IP address.
5. `source set-env.sh`
6. `docker login ghcr.io -u azhar-k`
7. Ensure port `80` (for UI), `8071` (for API Gateway), `8080`, `8073`, and `5432` are open depending on your needs.
8. `sudo docker compose up -d`