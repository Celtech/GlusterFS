FROM ubuntu:20.04 AS ubuntu
RUN apt-get -y update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:gluster/glusterfs-7 && \
    apt-get -y update && \
    apt install -y glusterfs-server && \
    systemctl enable glusterd

COPY ./scripts/* /usr/local/bin/

RUN chmod +x /usr/local/bin/docker_entrypoint.sh

EXPOSE 2222 111 245 443 24006 24007 2049 8080 6010 6011 6012 38465 38466 38468 38469 49152 49153 49154 49156 49157 49158 49159 49160 49161 49162

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]
CMD ["/usr/sbin/init"]
