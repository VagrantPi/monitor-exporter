FROM gcr.io/cadvisor/cadvisor:latest
ADD htpasswd /auth.htpasswd

EXPOSE 8080
ENTRYPOINT ["/usr/bin/cadvisor", "--http_auth_file", "auth.htpasswd"]
