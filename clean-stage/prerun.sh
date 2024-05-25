#!/bin/bash -e


echo "CURRENT: $(pwd)"
ls -lah
ls -lah pi-gen/

# Even though they are not listed in stage-list, they were built.
touch pi-gen/stage2/SKIP pi-gen/stage2/SKIP_IMAGE
touch pi-gen/stage3/SKIP pi-gen/stage3/SKIP_IMAGE
touch pi-gen/stage4/SKIP pi-gen/stage4/SKIP_IMAGE
touch pi-gen/stage5/SKIP pi-gen/stage5/SKIP_IMAGE
