# Dockerfile - simple Python app container
FROM python:3.11-slim

# create app directory
WORKDIR /app

# copy and install dependencies
COPY requirements.txt .
RUN python -m pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

# copy the package and tests (optional)
COPY . .

# default command - change if you have a web server
CMD ["python", "-m", "myapp.calc"]
