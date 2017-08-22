build:
	docker build -t brunotikami/docker-keystone-dev .
run:
	docker run -t -i  -p 5000:5000 -p 35357:35357 --hostname keystone -e HOSTNAME=keystone -e ADMIN_PASSWORD=admin brunotikami/docker-keystone-dev
clean:
	docker rm -f keystone
exec:
	docker exec -t -i keystone bash
log:
	docker logs -f keystone
