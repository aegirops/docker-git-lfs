# Use the official Alpine 3.18 image as the base image
FROM alpine:3.18

# Disable caching during package installation
ENV APK_NO_CACHE=1

# Install Git, Git LFS, Bash
RUN apk update
RUN apk add git git-lfs bash
RUN rm -rf /var/cache/apk/*

# Set a working directory
WORKDIR /app

# Entry point or command to run when the container starts
CMD ["bash"]
