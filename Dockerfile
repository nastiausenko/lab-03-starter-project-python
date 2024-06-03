FROM python:3.12.2-bookworm
COPY requirements requirements
COPY build build
COPY spaceship spaceship
RUN python -m venv ./.venv && \
    . ./.venv/bin/activate && \
    pip install -r requirements/backend.txt
CMD [".venv/bin/uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]