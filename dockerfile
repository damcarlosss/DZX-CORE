FROM python:3.10-slim

WORKDIR /app

# Instale dependências do sistema que o Poetry ou FastAPI pode precisar
RUN apt-get update && apt-get install -y curl

# Instalar Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Ajustar PATH para Poetry
ENV PATH="/root/.local/bin:$PATH"

# Copiar arquivos do projeto
COPY pyproject.toml poetry.lock* /app/

# Instalar dependências
RUN poetry install --no-root --no-dev

# Copiar o restante do código
COPY . /app

# Expor a porta que o FastAPI vai rodar
EXPOSE 8000

# Rodar o app FastAPI com uvicorn
CMD ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]