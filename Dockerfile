FROM python:3.9-slim-buster
WORKDIR /flask_auth_app
COPY ./requirements.txt /flask_auth_app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host", "0.0.0.0"]

# Build command: docker build -t flask-auth-app .
# Run command: docker run --rm -p 8080:5000 -v Users:/flask_auth_app/data flask-auth-app