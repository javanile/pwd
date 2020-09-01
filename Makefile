
build:
	chmod +x pwd-entrypoint.sh
	docker build -t javanile/pwd .

push: build
	git add .
	git commit -am "publish"
	git push
	docker push javanile/pwd

test-docker: build
	docker run --rm -v $${PWD}:/pwd -v /var/run/docker.sock:/var/run/docker.sock javanile/pwd

test-docker-compose:
	docker-compose -f pwd.yml run --rm pwd
