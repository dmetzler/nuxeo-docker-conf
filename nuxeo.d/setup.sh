#!/bin/bash

CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NUXEO_CONF=$NUXEO_HOME/bin/nuxeo.conf


cp -a $CURRENTDIR/mytemplate $NUXEO_HOME/templates

#$NUXEO_HOME/bin/nuxeoctl mp-install ...

perl -p -i -e "s/^#?(nuxeo.templates=.*$)/\1,mytemplate/g" $NUXEO_CONF