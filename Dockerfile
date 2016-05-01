FROM alpine
MAINTAINER Darebaet <fengwei2010@126.com>
ADD apks /
RUN apk add --no-cache --allow-untrusted /*.apk && \
/usr/glibc/usr/bin/ldconfig "/lib" "/usr/glibc/usr/lib" && \
echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf && \
rm /*.apk
