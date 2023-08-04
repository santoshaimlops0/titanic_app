# makefile

install:
	python3 -m pip install --upgrade pip &&\
		pip3 install -r requirements/requirements.txt &&\
		pip3 install -r requirements/test_requirements.txt

train:
	python3 titanic_model/train_pipeline.py

format:
	black *.py

lint:
	pylint --disable=R,C setup.py

test:
	python3 -m pytest tests/test_*.py

all : install train lint test format