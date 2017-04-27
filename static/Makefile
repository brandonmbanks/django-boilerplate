all: install
	if [ ! -e .env ];then cp .env.example .env; fi

install:
	docker-compose run web pip3 install -r requirements.lock

update: install-fresh lock

install-fresh:
	docker-compose run web pip3 install -r requirements.txt

lock:
	docker-compose run web pip3 freeze > requirements.lock
