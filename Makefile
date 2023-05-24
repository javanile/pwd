
build:
	chmod +x pwd-entrypoint.sh
	docker build -t javanile/pwd .
	docker build -t javanile/pwd:20 .

push: build
	git add .
	git commit -am "publish" || true
	git push
	docker push javanile/pwd
	docker push javanile/pwd:20

test-docker: build
	@docker run --rm -v $${PWD}:/pwd -v /var/run/docker.sock:/var/run/docker.sock javanile/pwd

test-docker-compose:
	docker-compose -f pwd.yml run --rm pwd
