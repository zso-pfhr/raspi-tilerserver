#!/bin/bash -e

install -m 644 files/update-tiles.cron "${ROOTFS_DIR}/etc/cron.d/"
install -m 755 files/update-tiles.sh "${ROOTFS_DIR}/usr/local/bin/"
