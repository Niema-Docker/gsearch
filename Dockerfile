# Minimal Docker image for GSearch using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install GSearch
RUN micromamba create -y -n gsearch -c conda-forge -c bioconda gsearch==0.3.5 && \
    micromamba clean --all --yes
ENV ENV_NAME=gsearch
