FROM google/cadvisor:v0.32.0
ADD htpasswd /auth.htpasswd

EXPOSE 8080
ENTRYPOINT ["/usr/bin/cadvisor", "--http_auth_file", "auth.htpasswd"]
