FROM eeacms/plone:5.2.13-31

ENV GRAYLOG_FACILITY=wise-plone

COPY site.cfg /plone/instance/
RUN buildDeps="build-essential libldap2-dev libsasl2-dev libssl-dev git vim xz-utils curl" \
    && apt-get update \
    && apt-get install -y --no-install-recommends $buildDeps \
    && curl "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb" -L -o "wkhtmltopdf.deb" \
    && ar x wkhtmltopdf.deb \
    && tar Jxvf data.tar.xz \
    && mkdir /plone/instance/parts/wkhtmltopdf \
    && mv usr/local/bin/wkhtmltopdf /plone/instance/parts/wkhtmltopdf/wkhtmltopdf \
    && pip install chardet \
    && find /plone -not -user plone -exec chown plone:plone {} \+ \
    && gosu plone buildout -c site.cfg
