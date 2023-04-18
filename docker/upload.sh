#!/usr/bin/env sh
set -euo pipefail
# apt update && apt install -y openssh-client
scp -o StrictHostKeyChecking=no -i "/secrets/id_rsa" "/output/${ISO_FILE_NAME}.iso" "${PROXMOX_USERNAME}@${PROXMOX_ENDPOINT}:/var/lib/vz/template/iso/${ISO_FILE_NAME}.iso"
