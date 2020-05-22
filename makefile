image_name=py3data

build:
	docker build -t ${image_name} .
tag:
	docker tag ${image_name} natihd16/${image_name}
push:
	docker push natihd16/${image_name}
pull:
	docker pull natihd16/${image_name}
runjob:
	kubectl create -f test.yaml
