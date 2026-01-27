FROM eeacms/plone-backend:6.1.3-10

ENV GRAYLOG_FACILITY=wise-plone

COPY site.cfg /plone/instance/

RUN buildDeps="build-essential libldap2-dev libsasl2-dev libssl-dev git vim xz-utils curl" \
    && apt-get update \
    && apt-get install -y --no-install-recommends $buildDeps \
    && apt-get install -y wkhtmltopdf \
    && mkdir -p /plone/instance/parts/wkhtmltopdf \
    && mv /usr/bin/wkhtmltopdf /plone/instance/parts/wkhtmltopdf/wkhtmltopdf \
    && pip install chardet \
    && find /plone -not -user plone -exec chown plone:plone {} \+