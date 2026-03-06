FROM eeacms/marine-backend 

RUN runDeps="vim tmux mc curl" \
    && apt-get update \
    && apt-get install -y gcc python3-dev build-essential --no-install-recommends $runDeps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && curl "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb" -L -o "wkhtmltopdf.deb" \
    && ar x wkhtmltopdf.deb \
    && tar Jxvf data.tar.xz \
    # this is needed because I can't change the default path to wkhtmltopdf
    && mkdir -p /plone/instance/parts/wkhtmltopdf \
    && mv usr/local/bin/wkhtmltopdf /plone/instance/parts/wkhtmltopdf/wkhtmltopdf

COPY sources.ini /app/

RUN bin/pip install "mxdev>=3.0.0" \
    && bin/mxdev -c sources.ini \
    && bin/pip install -r requirements-mxdev.txt \
    && find /app -not -user plone -exec chown -h plone:plone {} \+

RUN pip install playwright
RUN playwright install-deps
ENV PLAYWRIGHT_BROWSERS_PATH=/app/.cache/ms-playwright
RUN playwright install chromium firefox

# bin/pip install "mxdev>=3.0.0" && bin/mxdev -c sources.ini && bin/pip install -r requirements-mxdev.txt && find /app -not -user plone -exec chown -h plone:plone {} \+
# git config --global --add safe.directory '*'