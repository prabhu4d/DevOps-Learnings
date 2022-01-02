FROM python:3.8-alpine
WORKDIR /app
ADD . .
RUN pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.py
CMD [ "flask", "run" ]