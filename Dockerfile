FROM eeacms/plone:5.2.13-20

ENV GRAYLOG_FACILITY=wise-plone

RUN buildDeps="build-essential libldap2-dev libsasl2-dev libssl-dev git vim xz-utils curl" \
               && apt-get update \ 
               && apt-get install -y --no-install-recommends $buildDeps 

RUN mv /plone/instance/versions.cfg /plone/instance/eea-versions.cfg

COPY src/docker/* /
COPY src/plone/* /plone/instance/

RUN curl "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb" -L -o "wkhtmltopdf.deb"
RUN ar x wkhtmltopdf.deb
RUN tar Jxvf data.tar.xz
RUN mkdir /plone/instance/parts/wkhtmltopdf
RUN mv usr/local/bin/wkhtmltopdf /plone/instance/parts/wkhtmltopdf/wkhtmltopdf
RUN pip install chardet

RUN /docker-setup.sh
