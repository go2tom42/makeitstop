while true; do echo n; done | cp -Ri /config-default/* /config/
exec su-exec root ls /
exec su-exec root ls /config
exec su-exec root /config/watch.sh