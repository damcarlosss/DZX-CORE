FROM docker.all-hands.dev/all-hands-ai/openhands:0.46

# Copia seu código personalizado, se houver
COPY . /app

WORKDIR /app

# Expor a porta padrão do OpenHands
EXPOSE 3000

# Comando padrão que já inicia o OpenHands com runtime completo e microagents
CMD ["docker-entrypoint.sh"]