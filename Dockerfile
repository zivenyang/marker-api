FROM python:latest

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install libgl1 y
RUN pip install -e .

ENV MARKER_API_HOST=127.0.0.1
ENV MARKER_API_PORT=8000

CMD ["sh", "-c", "python server.py --host ${MARKER_API_HOST} --port ${MARKER_API_PORT}"]
