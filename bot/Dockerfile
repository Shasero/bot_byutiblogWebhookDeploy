FROM python:3.13.3-slim

WORKDIR /bot

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt && chmod -R 755 /var/www/certbot && chmod 755 .

COPY . .

ENV TZ Europe/Moscow

CMD ["python", "-u", "main.py"]