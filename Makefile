.PHONY: setup

setup: 
	sudo apt update
	sudo apt install python3.12-venv
	python3 -m venv .venv


activate:
	source .venv/bin/activate
	pip install ipykernel
