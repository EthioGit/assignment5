FROM alpine:latest as builder
COPY data.txt /tmp/data.txt
FROM fedora:latest
COPY --from=builder /tmp/data.txt /

