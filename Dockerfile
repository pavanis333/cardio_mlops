FROM docker.io/pavani333/deeplearning

ADD cardio.h5

ADD app.py /

ADD templates /templates

CMD ["app.py"]

ENTRYPOINT ["python3"]
