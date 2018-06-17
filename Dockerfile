FROM lsioarmhf/plex

LABEL image=dimakuz/plex-subzero-armhf
MAINTAINER Dima Kuznetsov "dmitrykuzn@gmail.com"

RUN apt update && apt install -y unzip
RUN wget $(curl -s https://api.github.com/repos/pannal/Sub-Zero.bundle/releases/latest | grep browser_download_url | cut -d '"' -f 4) -O /subzero.zip && \
	cd $(find /usr/lib/plexmediaserver/ -type d -name 'Plug-ins*') && \
	unzip /subzero.zip && \
        rm /subzero.zip
