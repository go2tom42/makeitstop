while true; do echo n; done | cp -Ri /config-default/* /config/ &> /dev/null
exec su-exec /config/watch.sh