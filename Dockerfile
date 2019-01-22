FROM ubuntu

# change to tw mirror 
RUN sed -i 's/\w\+.ubuntu.com/free.nchc.org.tw/g'  /etc/apt/sources.list

RUN apt-get update && apt-get install -y build-essential git lua5.2 liblua5.2-dev m4 automake libffi-dev markdown && apt-get clean

RUN cd /opt && git clone https://github.com/mascarenhas/alien.git && cd alien && ./bootstrap && ./configure && make 




