FROM mcr.microsoft.com/powershell:preview-alpine-3.14
RUN apk add --update inotify-tools mkvtoolnix ffmpeg su-exec		

ADD config/* /config-default/		
RUN mkdir /config
RUN chmod 777 /config
RUN chmod 777 /config-default/watch.sh
COPY entrypoint.sh /entrypoint.sh

VOLUME ["/config"]
VOLUME ["/media/tv-in/"]
VOLUME ["/media/tv-out/"]
VOLUME ["/media/film-in/"]
VOLUME ["/media/film-out/"]

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]