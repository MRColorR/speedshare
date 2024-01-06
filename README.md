# Speedshare Unofficial Docker Image
[Github repo](https://github.com/ElDavoo/speedshare)  
Supports **x86_64** and **arm64**.  
Your **container hostname** will be the **device name** on the dashboard.  
You won't get much logs, it's normal. Check the dashboard after about half a minute.  

> The auto-update feature is enabled, but untested.  

## Quick start
### Docker cli
```bash
docker run -d --name speedshare \
-h my_device \
-e CODE=your_authentication_code \
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
    restart: unless-stopped
```
