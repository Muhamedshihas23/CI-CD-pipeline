FROM python:3.11-slim

WORKDIR /app

# copy requirements file
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# copy the app code
COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
