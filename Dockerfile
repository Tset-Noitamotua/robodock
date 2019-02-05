# Version: 0.0.1

# https://hub.docker.com/r/robotframework/rfdocker
FROM robotframework/rfdocker:3.1.1

ENV CREATED 2019-02-06

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
