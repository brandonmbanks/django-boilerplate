# Django Boilerplate
Django boilerplate with docker compose and postgres

## Reading

[Django Docs](https://docs.djangoproject.com/en/1.11/)

[Django Rest Framework Docs](http://www.django-rest-framework.org/#tutorial)

[GraphQL Tutorial](http://graphql.org/learn/)

## Pre-reqs
Docker for mac is required to run this service
```
https://docs.docker.com/docker-for-mac/
```

## Setup
* Clone this repo

* Copy the .env.example by running:
  ```
  cp .env.example .env
  ```

* Lastly, start docker containers:
  ```bash
  docker-compose up -d
  ```

This will start the docker containers using docker native for mac

Then go to `localhost` and welcome to the world of Django


### Other handy tips
```sh
make         # install dependencies and setup env
make install # install locked dependencies
make update  # update dependencies and generate lock file
```

## Migrations
Migrations will automatically be detected based on your models.
The basics:
* Each model is a Python class that subclasses `django.db.models.Model`.
* Each attribute of the model represents a database field.

Create new migrations based on the changes you have made to your models:
```
python3 manage.py makemigrations
```

Check project’s migrations and their status
```
python3 manage.py showmigrations
```

Once you have your model created, you can then run 
```
python3 manage.py migrate
```

For more information you can visit the Django docs:

[Django Models](https://docs.djangoproject.com/en/1.11/topics/db/models/)

[Django Migrations](https://docs.djangoproject.com/en/1.11/topics/migrations/)

## Dependencies
Install dependencies from the lock file.
```bash
pip3 install -r requirements.lock
```

Add a new dependency.
```bash
docker-compose exec web bash
```
```bash
echo "django" >> requirements.txt
pip3 install django --upgrade
pip3 freeze | sort --ignore-case > requirements.lock
```

## Tests
How to run tests
```
docker-compose exec web bash
./manage.py test api.tests
```

Rules
* Each test file name must start with `test_`
* Each test class name should extend `django.test.TestCase` Ex: `class SampleTestCase(TestCase):`
* Each test function name must start with `test_`

For more information you can visit the Django docs:

[Django testing](https://docs.djangoproject.com/en/1.11/topics/testing/overview/)
