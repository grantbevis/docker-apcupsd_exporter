# apcupsd_exporter

Containerised version of [apcupsd_exporter](https://github.com/mdlayher/apcupsd_exporter)

apcupsd_exporter is a metrics exporter for [Prometheus](https://prometheus.io/)

Make sure you set the APCUPSDADDR variable with the details to access your APCUPSD instance

---
#### 0.0.2

- 2017-03-29 :: Initial release
- 2017-12-14 :: Dramatically reduced image size
---
#### Example Run Command

```
docker run -d -p 9162:9162 -e APCUPSDADDR="10.0.0.1:3551" b3vis/apcupsd_exporter
```

#### Docker Compose Example
```
version: "2"
services:
  apcupsd_exporter:
    image: b3vis/apcupsd_exporter
    restart: always
    container_name: apcupsd_exporter
    environment:
      - APCUPSDADDR="10.0.0.1:3551"
    ports:
      - "9162:9162"
```
---
