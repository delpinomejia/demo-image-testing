#!/bin/bash
set -e
export PATH="$PATH:/root/.dotnet/tools"

echo 'Installing netcore 3.1 SDK'
source /tmp/dotnet-install.sh -c 3.1
