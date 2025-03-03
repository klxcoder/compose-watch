# Run as a non-privileged user
FROM node
RUN useradd -ms /bin/sh -u 1001 app
USER app
CMD tail -f /dev/null
