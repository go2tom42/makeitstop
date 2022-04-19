while true; do echo n; done | cp -Ri /config-default/* /config/ &> /dev/null
ls /
ls /config
exec su-exec root /config/watch.sh