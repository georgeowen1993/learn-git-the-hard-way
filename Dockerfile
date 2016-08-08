FROM asciidoctor/docker-asciidoctor
RUN dnf install -y hostname npm
RUN dnf install -y bzip2
RUN npm install -g phantomjs
RUN npm install -g mermaid
RUN mkdir /book
ADD . /book
WORKDIR /book
RUN make
VOLUME output /book/output
