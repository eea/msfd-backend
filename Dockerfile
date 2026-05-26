FROM eeacms/plone-backend:6.1.4-4

ENV GRAYLOG_FACILITY=wise-plone
ENV SECURITY_POLICY_IMPLEMENTATION=C 
ENV VERBOSE_SECURITY=off
ENV DEFAULT_ZPUBLISHER_ENCODING=utf-8

COPY requirements.txt constraints.txt /app/

# Install wkhtmltopdf and dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    curl gcc g++ make freetds-dev libssl-dev libffi-dev unixodbc-dev \
    xvfb fonts-dejavu-core fontconfig \
    && curl "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb" \
    -L -o "wkhtmltopdf.deb" \
    && ar x wkhtmltopdf.deb \
    && tar Jxvf data.tar.xz \
    # this is needed because I can't change the default path to wkhtmltopdf
    && mkdir -p /plone/instance/parts/wkhtmltopdf \
    && mv usr/local/bin/wkhtmltopdf /plone/instance/parts/wkhtmltopdf/wkhtmltopdf \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -L "http://archive.debian.org/debian/pool/main/o/openssl/libssl1.1_1.1.1w-0+deb11u1_amd64.deb" \
    -o libssl1.1.deb \
    && dpkg -i libssl1.1.deb \
    && rm libssl1.1.deb

# Ensure build isolation subprocesses also honor constraints (pymssql/Cython)
ENV PIP_CONSTRAINT=/app/constraints.txt

# Install Python packages
RUN ./bin/pip install -r requirements.txt -c constraints.txt ${PIP_PARAMS} \
    && find /app -not -user plone -exec chown -h plone:plone {} \+
