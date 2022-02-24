FROM eeacms/plone:5.2.4-78

RUN mv /plone/instance/versions.cfg /plone/instance/eea-versions.cfg

COPY src/docker/* /
COPY src/plone/* /plone/instance/

RUN curl "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" -L -o "wkhtmltopdf.tar.xz"
RUN tar Jxvf wkhtmltopdf.tar.xz
RUN mkdir /plone/instance/parts/wkhtmltopdf
RUN mv wkhtmltox/bin/wkhtmltopdf /plone/instance/parts/wkhtmltopdf/wkhtmltopdf

RUN /docker-setup.sh
