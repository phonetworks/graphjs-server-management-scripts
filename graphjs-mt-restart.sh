#!/bin/sh

# this is for mt servers
supervisorctl stop all && /opt/graphjs-server-mt/killme.sh
supervisorctl start all # because the previous command will not terminate in 0
