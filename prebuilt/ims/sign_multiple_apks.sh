#!/bin/bash
for filename in *.apk; do
    for ((i=0; i<=3; i++)); do
        bash apksigner sign --key platform.pk8 --cert platform.x509.pem "$filename"
    done
done