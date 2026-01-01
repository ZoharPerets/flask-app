FROM python:3.12-slim

RUN useradd -m -d /home/myuser myuser

WORKDIR /home/myuser

COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

COPY app/ .

EXPOSE 5000

USER myuser

CMD ["python", "app/app.py"]
