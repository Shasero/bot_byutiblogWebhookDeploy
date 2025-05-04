FROM python:3.13.3-slim

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt && chmod 755 .

COPY . .

ENV TZ Europe/Moscow

CMD ["python", "-u", "main.py"]