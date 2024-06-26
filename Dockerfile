FROM python:3.12.2-bullseye
COPY requirements/backend.txt .
RUN pip install --no-cache-dir -r backend.txt
COPY build build
COPY spaceship spaceship
CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]