FROM debian:12.1
COPY app.conf app.sh entrypoint.sh /
ENTRYPOINT ["/bin/bash","/entrypoint.sh"]
CMD ["/app.sh"]
