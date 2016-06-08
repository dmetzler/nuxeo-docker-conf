FROM busybox

ADD nuxeo.d /docker-entrypoint-initnuxeo.d/
VOLUME /docker-entrypoint-initnuxeo.d/
RUN /bin/true
