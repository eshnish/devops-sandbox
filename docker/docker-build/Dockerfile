FROM busybox
SHELL ["/bin/sh", "-c"]
ARG AUTHOR=Tarun
LABEL purpose="demo"
ENV GREETING="Hello World"
WORKDIR /app
ADD greeting.txt /app/greeting.txt
COPY script.sh .
RUN chmod +x script.sh
VOLUME ["/data"]
EXPOSE 443
HEALTHCHECK --interval=30s --timeout=10s CMD test -f /app/healthy.txt || exit 1
USER nobody
CMD sh -c 'echo "Starting script.sh" && "./script.sh"'
ENTRYPOINT ["sh","-c"]
STOPSIGNAL SIGTERM
