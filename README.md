# A Python Repo


This repo builds a python 3.12.x docker image with Streamlit.

This image is based on the Python3.12.x Debian Bookworm Slim docker image.   


## Naming Convention


The naming **Standard** convention is based on similar projects based on the 
Debian Linux distribution, where `-slim` is appended to the end of the tag.  


The **Standard** branch is based on the specified version of Python provided 
by the Python docker image.   


### Standard Naming Convention


    aviumlabs/python-streamlit:<version | latest>-slim


Where version is either numeric based on the Python version or the literal 
'latest'.  


## Build


### Version


    docker build --no-cache -t aviumlabs/python-streamlit:3.12-slim .


Update the base image:


    docker build --pull --no-cache -t aviumlabs/python-streamlit:3.12-slim .


## Run


Running the docker image to confirm version and python version:


    docker run -it --rm aviumlabs/python-streamlit:3.12-slim /usr/bin/bash


## Template Repo


This repo is a template repo.  
GitHub documentation for using a template repository is here:  


    https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template


### Create and Clone a New Repository with GitHub CLI


    gh repo create <application_name> -c -d "Application description" \
    --private|public -p aviumlabs/python-streamlit


Created repository \<github\_userid\>\<application\_name\>  on GitHub  
Cloning into '\<application\_name\>'...  


---


### Docker Hub


Internal notes for pushing images to Docker Hub.  


    docker push aviumlabs/python-streamlit:<tagname>-slim

 
    docker push aviumlabs/python-streamlit:3.12-slim
