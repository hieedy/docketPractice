FROM python:3.8-slim-buster

#Specify the working directory
WORKDIR /flask-app

#Copy the requirements.txt to the working directory
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

#Copy all the code in the current diectory to the container working directory
COPY . .

#Run the flask app
CMD ["python", "-m", "flask", "run", "--host", "0.0.0.0"]
