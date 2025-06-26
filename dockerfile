FROM docker.all-hands.dev/all-hands-ai/openhands:0.46

# Definir diretório de trabalho
WORKDIR /app

# Copiar seu código (caso customize microagents)
COPY . /app

# Expor porta padrão
EXPOSE 3000

# Iniciar o aplicativo no modo normal
CMD ["docker-entrypoint.sh"]