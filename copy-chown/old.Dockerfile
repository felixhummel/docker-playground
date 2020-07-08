FROM python:3.7-stretch

# This is the UID of the application user.
# Leave the default value for test/prod.
# For development, set this via `--build-arg` to your uid which you can get by
# running `id -u`.
ARG UID=2000
# Analoguous to UID.
ARG GID=2000

# add user with homedir
RUN useradd --uid $UID --base-dir /home --create-home --home-dir /home/app app

RUN mkdir /opt/project
COPY stuff/ /opt/project/
RUN chown -R app:app /opt/project/

WORKDIR /opt/project
USER app

