FROM nginx:1.21.6-alpine

ENV USER=asesoressura
ENV UID=1000
ENV GID=1000

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/$USER" \
    --uid "$UID" \
    "$USER"

RUN addgroup asesoressura nginx

RUN chown -R asesoressura:asesoressura /var/cache/nginx && \
        chown -R asesoressura:asesoressura /var/log/nginx && \
        chown -R asesoressura:asesoressura /etc/nginx/conf.d

RUN touch /var/run/nginx.pid && \
        chown -R asesoressura:asesoressura /var/run/nginx.pid

# USER ${USER}
