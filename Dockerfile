FROM tensorflow/tensorflow:2.13.0-gpu

RUN apt-get update -y && \
    apt-get install -y libgl1-mesa-dev && \
    apt install -y nodejs npm && \
    apt install -y graphviz

RUN npm install n -g

RUN mkdir /tf
WORKDIR /tf
COPY requirements.txt /tf/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD jupyter lab --ip=0.0.0.0 --allow-root
