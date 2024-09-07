build:
	docker build . -t llm_my_image

run:
	docker run --rm -it --gpus all -p 5000:8888 -p 6061:6006 -w /tf -v "%cd%":/tf --name llm-container llm_my_image:latest

rmi:
	docker rmi llm_my_image:latest

exec:
	docker exec -it llm-container /bin/bash
