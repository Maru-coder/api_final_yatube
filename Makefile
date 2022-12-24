POETRY = poetry run
WORKDIR = yatube_api
TEMPLATES-DIR = $(WORKDIR)/templates
MANAGE = $(POETRY) python $(WORKDIR)/manage.py

style:
	$(POETRY) black -S -l 79 $(WORKDIR)
	$(POETRY) isort $(WORKDIR)

lint:
	$(POETRY) flake8
	$(POETRY) mypy $(WORKDIR)

test:
	$(POETRY) pytest -vv

run:
	$(MANAGE) runserver

migrate:
	$(MANAGE)  makemigrations
	$(MANAGE)  migrate
