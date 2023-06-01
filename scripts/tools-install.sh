#!/bin/bash
set -e
set -e
export PATH="$PATH:/root/.dotnet/tools"

echo "Installing Sleet"
dotnet tool install -g Sleet --version 4.1.6

echo "Installing Lambda tools"
dotnet tool install -g Amazon.Lambda.Tools

echo "Installing Lambda templates"
dotnet new --install Amazon.Lambda.Templates