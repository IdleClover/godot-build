FROM ubuntu:24.04

ARG GODOT_VERSION
ARG EDITORS_DIR
ARG TEMPLATES_DIR

COPY ${EDITORS_DIR} /usr/local/bin/
COPY ${TEMPLATES_DIR} /root/.local/share/godot/export_templates/${GODOT_VERSION}.stable/

RUN chmod +x /usr/local/bin/godot*