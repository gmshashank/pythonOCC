FROM continuumio/miniconda

LABEL maintainer="gmshashank@gmail.com"

COPY . /app

WORKDIR /app

RUN conda env create -f environment.yml

SHELL ["conda","run","-n","pyoccenv","/bin/bash","-c"]

ENV PATH /opt/conda/envs/pyoccenv/bin:$PATH

EXPOSE $PORT

CMD gunicorn app:app --bind 0.0.0.0:$PORT --workers=4 --reload