### Base image for compiling documentation

#### Contents
The image is build on Ubuntu Jammy (22.04), with the following packages installed:
- latex
- pandoc
- graphviz
- sphinx
- jupyter notebook
- git
- vim
- ghostscript

#### How to build image
Can be built for multiple architectures with `buildx`. Add a version number tag and, if it's backwards compatible, the `latest` tag as well. For example:
```
docker buildx build --platform linux/amd64,linux/arm64 --push -t pearlhub/doc-dev:vx -t pearlhub/doc-dev:latest .
```