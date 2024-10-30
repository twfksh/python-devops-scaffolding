install:
	# install required files from requirements.txt 
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	# format code 
	black *.py mylib/*.py

lint:
	# linting setup using pylint or flake8 or ruff

test:
	# setup test

deploy:
	# setup deoply

all: install format lint test deploy
