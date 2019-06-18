FROM ubuntu

WORKDIR /mydir 
RUN apt-get update && apt-get install -y wget
RUN touch hello.txt 
COPY local.txt . 
RUN wget http://example.com/index.html 
CMD ["/bin/bash"]
