FROM mcr.microsoft.com/powershell:preview-alpine-3.14
RUN apk add --update inotify-tools mkvtoolnix ffmpeg su-exec		
RUN mkdir /config
ADD config/* /config/		
RUN chmod 777 /config/watch.sh
VOLUME ["/config"]
VOLUME ["/media/tv-in/"]
VOLUME ["/media/tv-out/"]
VOLUME ["/media/film-in/"]
VOLUME ["/media/film-out/"]

ENTRYPOINT ["/config/watch.sh"]
