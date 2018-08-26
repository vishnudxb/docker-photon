FROM vishnunair/go-alpine-edge:latest

RUN pip install requests tld

RUN git clone https://github.com/s0md3v/Photon.git

WORKDIR /go/Photon

CMD [ "tail", "-F", "-n0", "/etc/hosts"  ]
