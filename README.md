# GitHub CI Vulnerability Scanning v3

In this demo we will use GitHub actions to build, scan for vulnerabilities and push a container image.
The workflow is as follows:

1. Setup Docker Buildx to be able to build the image
2. Build the container image and store it locally
3. Download the Snyk cli if needed
4. Perform the scan
5. Login to the registry
6. Push the container image to a remote registry (optional with provided `build-push.sh`script)

The workflow leverages GitHub actions cache to avoid downloading the binary or
the databases if they are available.

## Setup

It is required to create a few repository secrets in order to be able to push the
container image:

* `REGISTRY_USER`: Docker username
* `REGISTRY_PASSWORD`: Docker user password
* `SNYK_TOKEN`: Snyk Token

Modify the environment variables on the [snyk-container.yml](snyk-container.yml) file to fit your needs.
```
