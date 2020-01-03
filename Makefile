.PHONY: build run deploy setup

all: build

build:
	rake generate

run:
	rake preview

deploy:
	rake generate && \
	rake deploy && \
	git status

setup:
	./scripts/setup.sh

