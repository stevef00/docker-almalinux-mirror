FROM almalinux:9

ENV ALMA_VERSION=${ALMA_VERSION:-8.7}

COPY ["update-repo.sh", "/usr/bin/"]

RUN dnf -y update \
  && dnf -y install rsync \
  && mkdir -pv /usr/share/nginx/html

CMD ["/usr/bin/update-repo.sh"]
