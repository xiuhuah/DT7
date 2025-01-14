FROM cunlifs/daytrader7:v0.2
ENV http_proxy http://9.196.156.29:3128
ENV https_proxy http://9.196.156.29:3128

USER root
RUN yum install tree -y

EXPOSE 10200
WORKDIR /root

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT ["/root/start.sh"]
