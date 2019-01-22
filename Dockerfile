FROM ubuntu

# change to tw mirror 
RUN sed -i 's/\w\+.ubuntu.com/free.nchc.org.tw/g'  /etc/apt/sources.list

RUN apt-get update && apt-get install -y build-essential uuid-dev iasl git gcc-5 nasm python

RUN apt-get update && apt-get -y install lua5.2 liblua5.2-dev vim m4 automake 

RUN apt-get -y install libffi-dev markdown

RUN cd /opt && git clone https://github.com/mascarenhas/alien.git && cd alien && ./bootstrap && ./configure && make 




