# Docker nuxeo image configuration

This is a sample docker configuration image that allow to configure the official Nuxeo Docker image.

Base explanation is to use the `docker-entrypoint-initnuxeo.d` directory to put some setup script and mount it thru a `--volumes-from` option.

## How to use


    docker build -t nuxeoconf .
    docker run --name nuxeoconf nuxeoconf
    docker run -it --volumes-from nuxeoconf -p 8080:8080 -d  --name nuxeo nuxeo:8.2
