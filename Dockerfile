FROM python:3.6.5

WORKDIR /root/

RUN apt-get update --fix-missing && \
    pip install --upgrade pip && \
    pip install numpy scipy scikit-learn boto3 && \
    pip install pandas-td td-client

CMD ["python"]
