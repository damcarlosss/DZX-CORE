FROM docker.all-hands.dev/all-hands-ai/openhands:0.46

COPY . /app

WORKDIR /app

EXPOSE 3000

CMD ["docker-entrypoint.sh"]