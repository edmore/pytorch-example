FROM pytorch/pytorch:2.9.1-cuda12.6-cudnn9-runtime

WORKDIR /service

RUN apt clean && apt-get update

COPY . .

RUN ls /service

RUN mkdir -p data

# Add additional dependencies below ...
RUN pip install -r /service/requirements.txt

ENTRYPOINT [ "python", "/service/main.py" ]