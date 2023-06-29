FROM alpine:latest
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN apk add --update curl
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install requests
COPY run.sh /root/
RUN curl https://raw.githubusercontent.com/0xSteady/minionsparser.py/main/minionsparser.py -o /etc/periodic/daily/minionsparser.py
RUN chmod +x /root/run.sh
RUN chmod +x /etc/periodic/daily/minionsparser.py
VOLUME /tmp/minionsparser
CMD ["/root/run.sh"]
