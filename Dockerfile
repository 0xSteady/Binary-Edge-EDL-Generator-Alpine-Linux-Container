FROM alpine:latest
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip install requests
COPY run.sh /root/
COPY minionsparser.py /etc/periodic/daily
RUN chmod +x /root/run.sh
RUN chmod +x /etc/periodic/daily/minionsparser.py
# RUN rc-service crond start && rc-update add crond
VOLUME /tmp/minionsparser
CMD ["/root/run.sh"]