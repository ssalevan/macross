FROM centos

ADD . /macross

RUN yum groupinstall -y "Development Tools" && yum install -y glibc-devel.i686

WORKDIR /macross

RUN make clean && make macross && mv ./macross /usr/bin

WORKDIR /macross/slinky

RUN make clean && make slinky && mv ./slinky /usr/bin
