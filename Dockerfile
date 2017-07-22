FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl libcurl4-openssl-dev libsqlite3-dev gcc git make xz-utils
RUN curl -fsS https://dlang.org/install.sh | bash -s dmd

RUN git clone https://github.com/skilion/onedrive.git
RUN git --git-dir ./onedrive/.git checkout 7fae9c1befb618d97e7366fd20de2c04e91b99b0
RUN (. ~/dlang/dmd-2.075.0/activate && make -C onedrive)
RUN mv onedrive/onedrive /usr/local/bin

CMD onedrive
