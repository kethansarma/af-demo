FROM python:3.9-slim-buster
COPY src src/
RUN pip install --no-cache-dir -r src/requirements.txt
# Set the working directory
WORKDIR /src
CMD ["python", "main.py"]