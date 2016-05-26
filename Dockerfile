FROM jupyter/scipy-notebook

MAINTAINER Jaime Ashander "jashander@ucdavis.edu"

USER root
RUN apt-get update && apt-get install -yq --no-install-recommends \
    zlib1g-dev

USER jovyan
RUN pip install --upgrade pip && pip install --upgrade --log /home/jovyan/pip-debug.log simupop

WORKDIR /notebooks
