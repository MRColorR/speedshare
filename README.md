# Speedshare Unofficial Docker Image
Supports **x86_64** and **arm64**.  
Your **container name** will be the **device name** on the dashboard.
## Quick start
### Docker cli
```bash
docker run -d --name my_device \
-e CODE=your_authentication_code \
eldavo/speedshare 
```
### Docker compose
```yaml
version: "3.9"
services:
  speedshare:
    container_name: my_device
    image: eldavo/speedshare
    environment:
      - CODE=your_authentication_code
    restart: unless-stopped
```
