# Bikeshed Docker image

This is an Alpine-based Docker image for [Bikeshed](https://github.com/tabatkins/bikeshed).

The image is [available on Docker Hub](https://hub.docker.com/r/netwerkdigitaalerfgoed/bikeshed).

To generate HTML output from your Bikeshed source file, for example `index.bs`:

    docker run -v (pwd):/src netwerkdigitaalerfgoed/bikeshed bikeshed spec index.bs
