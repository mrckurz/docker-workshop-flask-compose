FROM python:3.9-slim

#set workdir to app
WORKDIR /app

# copy contents from folder app to folder app
COPY app/ /app

# pip install requirements (flask)
RUN pip install -r requirements.txt

# start python app
CMD ["python", "app.py"]

