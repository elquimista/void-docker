`docker-compose.yml`:
```yaml
version: '3'
services:
  app:
    container_name: voip
    image: elquimista/voip:0.95
    restart: unless-stopped
    depends_on:
      - db
    environment:
      - BASE_URL=https://example.com/
      - DB=mongodb://root:YouDareBreakMe@voip_db/
      - COOKIE_KEY=putsupersecretphrasehere
      - HTTPS=false
      - SIGNUPS=on

  db:
    container_name: voip_db
    image: mongo:6.0.13
    restart: unless-stopped
    environment:
      - MONGO_INITDB_ROOT_USERNAME=root
      - MONGO_INITDB_ROOT_PASSWORD=YouDareBreakMe
    volumes:
      - ./db_data:/data/db
```
