# Imagem base do Python
FROM python:3.11-slim

# Definir diretório de trabalho
WORKDIR /app

# Copiar arquivos do projeto para dentro do container
COPY . /app

# Instalar dependências (se existir requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt || echo "Sem requirements.txt"

# Comando para rodar a aplicação
CMD ["python", "main.py"]
