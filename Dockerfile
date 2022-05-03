FROM nginx:1.21.6-alpine

ENV USER=asesoressura
ENV UID=1001
ENV GID=1001

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/$USER" \
    --uid "$UID" \
    "$USER"

RUN chown -R asesoressura:asesoressura /var/cache/nginx && \
        chown -R asesoressura:asesoressura /var/log/nginx && \
        chown -R asesoressura:asesoressura /etc/nginx/conf.d

RUN touch /var/run/nginx.pid && \
        chown -R asesoressura:asesoressura /var/run/nginx.pid

USER ${USER}
