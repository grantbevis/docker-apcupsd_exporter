FROM golang:1.7-alpine
MAINTAINER b3vis
WORKDIR /go/src
RUN apk add git --no-cache && \
    git clone --depth=50 --branch=master https://github.com/mdlayher/apcupsd_exporter.git && \
    cd /go/src/apcupsd_exporter && \
    go get github.com/golang/lint/golint && \
    go get -t -v ./... && \
    go get -d ./... && \
    go build ./... && \
    apk del git && \
    rm -rf /go/src/
EXPOSE 9162
CMD /go/bin/apcupsd_exporter -apcupsd.addr $APCUPSDADDR
