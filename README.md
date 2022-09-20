# pythonOCC

Dockerised Flask application using pythonOCC 


TODO:
creating pythonOCC application
Creating web application using Flask
Dockerising the application
Deploy the web application on Heroku


COMMANDS:
build docker image
```
docker build -t pythonOCC_Application .
```

running the docker image
```
docker run -d -t -p 5000:5000 pythonOCC_Application
```

using docker-compose
```
docker-compose up --build
```

Open the following url: htpp://127.0.0.1:5000