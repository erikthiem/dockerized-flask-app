# dockerized-flask-app
Experimental app for getting more familiar with Docker and Flask

## To run this locally:
- `docker build . -t docker-flask-app`
- `docker run -p 5000:5000 -e PORT=5000 docker-flask-app`
- `http://localhost:5000`

## To run this on Heroku
- `heroku container:login`
- `heroku ps:scale web=1`
- `heroku container:push web`
- `heroku container:release web`
