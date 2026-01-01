FROM python:3.12-slim

RUN useradd -m -d /home/myuser myuser

WORKDIR /home/myuser

USER myuser

COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

COPY app/ .

EXPOSE 5000

CMD ["python", "app/app.py"]
