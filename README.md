# Speedshare Unofficial Docker Image
[Github repo](https://github.com/MRColorR/speedshare)  
Supports **x86_64** and **arm64**.  
- Your **container hostname** will be the random.  
- You won't get much logs, it's normal. Check the dashboard after about half a minute.
- You can pass a specific UUID to the container, so it stays the same after restarts.

> The auto-update feature is enabled, but untested.  

## Quick start
### Docker cli
```bash
docker run -d --name speedshare \
-h my_device \
-e CODE=your_authentication_code \
-e SPEEDSHARE_UUID=your_uuid \
eldavo/speedshare 
```
### Docker compose
```yaml
version: "3.9"
services:
  speedshare:
    container_name: speedshare
    hostname: my_device
    image: eldavo/speedshare
    environment:
      - CODE=your_authentication_code
      - SPEEDSHARE_UUID=your_uuid
    restart: unless-stopped
```
