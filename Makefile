.PHONY: build run deploy env

all: build

build:
	rake generate

run:
	rake preview

deploy:
	rake deploy

