FROM fedora:38

RUN dnf -y install tang tini \
	&& dnf clean all

VOLUME [ "/db" ]

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/usr/libexec/tangd", "-l", "/db"]

EXPOSE 9090
