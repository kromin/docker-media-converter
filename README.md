# media-converter
A docker container to convert your `mkv` files to an `mp4` format

### How does it work?

It searches through a specified list of directories for all files ending with
`*.mkv` and then uses the `avconv` tool to convert these files to the `mp4`
format.

### How do I use this?

You should be able to run the docker container using something along the lines
of:

```bash
docker run --rm -ti -v `pwd`:/files ealmaspam/docker-media-converter
```
