SHELL := /bin/bash

.DEFAULT_GOAL = help

dependency:
	@echo "target depend on me"

# this is anatomy of make file
target: dependency
# if we don't specify the @ at beginning the command will show in terminal
	echo "Recipe 1"
	@echo "Recipe 2"
	@echo "Recipe 3"
	@echo "Recipe 4"

# variable declaration
Name = Prabhu

# first demo in make file with python
hi: hi.py
	@echo hi.py file found
	@python3 hi.py	

# create hi.py in order to run hello
# hello is depend of hi command which it is depends on hi.py file
hello: hi
	@echo "Hello I am Bash"
	@python3 hello.py

install: # installing python dependencies
	@python3 -m venv venv
	@source venv/bin/activate
	@pip install -r requirements.txt

array:
	@python3 maths.py

clean: # cleans venv, __pycache__
	@echo "Cleaning Compiled Files"
	@rm -rf venv

whoiam:
	@echo I am $(Name)

format: # formats the python files
	@black .

help:
	@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# I don't know how it will work
sample:
	@scripts/sample.py "$@"