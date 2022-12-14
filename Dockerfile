FROM nginx:1.23.3-alpine

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
