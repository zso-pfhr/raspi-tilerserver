#!/bin/bash -e


echo "CURRENT: $(pwd)"
ls -lah
ls -lah pi-gen/

# The default stage installs many unnecessary packages, especially python and dev tools.
cat << EOF > pi-gen/stage2/01-sys-tweaks/00-packages-nr
ssh less fbset sudo psmisc strace ed ncdu
console-setup keyboard-configuration debconf-utils parted
bash-completion pkg-config
avahi-daemon
ca-certificates curl
fake-hwclock
nfs-common
dphys-swapfile
raspberrypi-sys-mods
htop
man-db
policykit-1
ethtool
pciutils
udisks2
unzip zip p7zip-full
nginx
file
EOF

# The default stage installs unnecessary packages
echo "" > pi-gen/stage2/01-sys-tweaks/00-packages

# Even though they are not listed in stage-list, they were built.
touch pi-gen/stage3/SKIP
touch pi-gen/stage4/SKIP
touch pi-gen/stage5/SKIP
