# Build image
FROM python:3.9

LABEL description="dcrdocs build"
LABEL version="1.0"
LABEL maintainer "jholdstock@decred.org"

USER root
WORKDIR /root

RUN python -m pip install --upgrade pip

COPY ./ /root/

RUN pip install mkdocs && \
	pip install --user -r requirements.txt

# Install dependencies for generating social cards.
# https://squidfunk.github.io/mkdocs-material/setup/setting-up-social-cards
RUN apt update && \
    apt install libcairo2-dev libfreetype6-dev libffi-dev libjpeg-dev libpng-dev libz-dev && \
	pip install pillow cairosvg

ENV DCRDOCS_CARDS true

RUN ./bin/build_docs.sh

# Serve image (stable nginx version)
FROM nginx:1.20

LABEL description="dcrdocs serve"
LABEL version="1.0"
LABEL maintainer "jholdstock@decred.org"

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=0 ./root/site/ /usr/share/nginx/html
