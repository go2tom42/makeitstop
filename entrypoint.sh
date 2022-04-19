while true; do echo n; done | cp -Ri /config-default/* /config/ &> /dev/null
exec /config/watch.sh