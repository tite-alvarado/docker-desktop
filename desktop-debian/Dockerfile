ARG vncpw=changeme
# Pull base image.
FROM arm32v7/debian:stretch-slim
EXPOSE 5900
RUN apt-get update \
  && apt-get install -y vnc4server xfce4 x11vnc xvfb transmission netsurf
RUN mkdir -p /root/.vnc
RUN x11vnc -storepasswd changeme /root/.vnc/passwd
COPY entrypoint.sh /entrypoint.sh
RUN chmod -R 600 /root/.vnc/passwd*
ENTRYPOINT ["/entrypoint.sh"]
