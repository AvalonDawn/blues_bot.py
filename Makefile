# Makefile for common workflows for the bot

all:
	# `update` pulls and rebases new changes
	# `start` starts up a new docker container
	# `both` does both

start: build
	# Starting new container
	docker run -d --restart always bbot

build:
	# Build new docker image
	docker build -t bbot .

update:
	# Fetch, stash, then pull with rebase
	git fetch
	git stash
	git pull --rebase origin master
	git stash pop
	# Show 5 latest commits
	git log --pretty=format:"%Cred%h %Creset%s" -5

both: update start

submodule:
	cd cogs/embed_help
	git stash
	git fetch
	git pull
	git stash pop
	echo "Updated embed_help"

log:
	# Which container?
	read container_id
	docker exec $(container_id) /bin/cat /bbot.log
