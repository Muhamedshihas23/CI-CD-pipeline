# Use an official Python runtime as a parent image
FROM python:3.11-slim

WORKDIR /app

# copy requirements & install (layer caching)
COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy app code
COPY src/ .

ENV PYTHONUNBUFFERED=1

EXPOSE 5000

CMD ["python", "app.py"]
