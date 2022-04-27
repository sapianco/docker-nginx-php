FROM nginx:1.21.6-alpine

ENV USER=sapian
ENV UID=1001
ENV GID=1001

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/$USER" \
    --uid "$UID" \
    "$USER"

USER ${USER}
