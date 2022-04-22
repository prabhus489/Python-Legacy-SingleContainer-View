FROM python:3.10.4-slim

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

# Creates a non-root user with an explicit UID and adds permission to access the /app folder
RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser
ENTRYPOINT ["/bin/bash"]
CMD ["startmyapps.sh"]
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "manage:app"]
#CMD ["manage.py", "runserver"]

