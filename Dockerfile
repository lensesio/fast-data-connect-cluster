FROM landoop/fast-data-dev:cp3.1.2
MAINTAINER Marios Andreopoulos <marios@landoop.com>

ADD setup-and-run-connect-distributed.sh /usr/local/bin
ADD supervisord.conf /etc/

RUN chmod +x /usr/local/bin/setup-and-run-connect-distributed.sh

EXPOSE 8083
ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["/usr/local/bin/setup-and-run-connect-distributed.sh"]
