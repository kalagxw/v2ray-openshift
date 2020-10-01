FROM alpine:3.5
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps ca-certificates wget bash \
 && mkdir -p /usr/bin/fd929/ && cd /usr/bin/fd929/ \
 && wget https://github.com/kalagxw/stay/raw/master/fd929 && wget https://github.com/kalagxw/stay/raw/master/guess \
 && chmod +x fd929 && chmod +x guess \
 && mkdir -p /etc/fd929 \
 && chgrp -R 0 /etc/fd929 \
 && chmod -R g+rwX /etc/fd929
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT /configure.sh
