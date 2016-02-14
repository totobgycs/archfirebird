FROM totobgycs/archdev
MAINTAINER totobgycs

USER build
ENV TERM xterm
ENV VISUAL nano
RUN yaourt -S --noconfirm icu libedit ; \
  yaourt -S --aur --noconfirm firebird-superserver
USER root
RUN  rm -r /opt/firebird/examples /opt/firebird/doc /opt/firebird/firebird.conf ;\
  mkdir /opt/firebird/tmp ;\
  mkdir /database ;\
  echo "RootDirectory  = /opt/firebird" > /opt/firebird/firebird.conf ;\
  echo "DatabaseAccess=Restrict /database" >> /opt/firebird/firebird.conf ;\
  echo "TempDirectories = /opt/firebird/tmp" >> /opt/firebird/firebird.conf
VOLUME ["/database", "/opt/firebird"]
EXPOSE 3050/tcp
ENTRYPOINT /opt/firebird/bin/fbguard
 