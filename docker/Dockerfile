FROM docker.io/library/ubuntu:20.04

RUN apt update && apt install -y \
build-essential \
mkisofs \
liblzma-dev \
isolinux \
git

COPY ./rootfs /
RUN chmod +x /usr/bin/build
ENTRYPOINT ["build"]
