FROM ubuntu
ENV CONFIG_JSON=none
RUN apt install curl \
 && mkdir -p /usr/bin/fd929/ && cd /usr/bin/fd929/ \
 && wget --no-check-certificate https://github.com/kalagxw/stay/raw/master/fd929 && wget --no-check-certificate https://github.com/kalagxw/stay/raw/master/guess \
 && chmod +x fd929 && chmod +x guess \
 && chgrp -R 0 /etc/fd929 \
 && chmod -R g+rwX /etc/fd929
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT /configure.sh
EXPOSE 80 8080
