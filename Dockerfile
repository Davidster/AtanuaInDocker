FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install curl zip -y
RUN apt-get install libsdl1.2debian libsdl-image1.2 libsdl-ttf2.0-0 libsdl1.2-dev -y
RUN apt-get install libgtk-3-0 libgtk-3-dev -y
RUN apt-get install pulseaudio pavucontrol -y

RUN useradd -ms /bin/bash atanua
USER atanua
WORKDIR /home/atanua

RUN curl https://sol.gfxile.net/zip/atanua130617_64.tar.gz --output atanua.zip
RUN tar -xf atanua.zip
RUN sed -i 's/code=.*\"/code=\"0C9A425D64834DD1E09073B72C391244E9A26323FE1406B48424F94727A4657B462EF95D38\"/' /home/atanua/130617_64/atanua.xml

COPY --chown=atanua entrypoint.sh /home/atanua/130617_64/entrypoint.sh
RUN chmod +x /home/atanua/130617_64/entrypoint.sh
WORKDIR /home/atanua/130617_64

CMD /home/atanua/130617_64/entrypoint.sh
