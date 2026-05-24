FROM python:3.11-alpine3:17

WORKDIR /app

COPY  . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

# Start the app using gunicorn
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80"]