FROM public.ecr.aws/bitnami/python:latest 

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]