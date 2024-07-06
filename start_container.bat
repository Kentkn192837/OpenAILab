@echo off
docker run --rm -it --gpus all -p 5000:8888 -p 6061:6006 -w /tf -v "%cd%":/tf llm_my_image:latest
