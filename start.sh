#!/bin/bash

# Convert environment variables in the conf to fixed entries
# http://stackoverflow.com/questions/21056450/how-to-inject-environment-variables-in-varnish-configuration
${VARNISH_BACKEND_PORT:-3000}
${VARNISH_BACKEND_IP:-172.17.42.1}
${VARNISH_PORT:-8080}

for name in VARNISH_BACKEND_PORT VARNISH_BACKEND_IP VARNISH_PORT
do
    eval value=\$$name
    sed -i "s|\${${name}}|${value}|g" /etc/varnish/default.vcl
    sed -i "s|\${${name}}|${value}|g" /etc/default/varnish
done

# Start varnish and log
service varnish restart
varnishlog
