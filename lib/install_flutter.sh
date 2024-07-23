#!/bin/bash

# Install Flutter
FLUTTER_VERSION="3.0.0"
echo "Downloading Flutter SDK..."
wget -q https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz
tar xf flutter_linux_${FLUTTER_VERSION}-stable.tar.xz -C /opt/buildhome/
