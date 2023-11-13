# Pull Base Image
FROM python:latest

# COPY Main Server/Runner File
COPY main.py main.py

# COPY Requirements/Dependencies File
COPY requirements.txt requirements.txt

# Execute Dependencies Installation
RUN pip install -r requirements.txt

# Execute Application Server
ENTRYPOINT [ "python", "main.py" ]