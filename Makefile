install:
	# install required files from requirements.txt 
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	# format code 
	black *.py mylib/*.py

lint:
	# linting setup using pylint or flake8 or ruff
	pylint --disable=R,C *.py mylib/*.py

test:
	# setup test
	python -m pytest -vv --cov=mylib test/test_logic.py

deploy:
	# setup deoply

all: install format lint test deploy

.PHONY: all test # make test does not work without this line
