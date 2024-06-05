FROM python:3.12.2-alpine
COPY requirements requirements
RUN python -m venv ./.venv && \
    . ./.venv/bin/activate && \
    pip install -r requirements/backend.txt
COPY build build
COPY spaceship spaceship
CMD [".venv/bin/uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]