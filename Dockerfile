FROM python:3.7.0

WORKDIR /root/

RUN apt-get update --fix-missing && \
    pip install --upgrade pip && \
    pip install numpy scipy scikit-learn boto3 && \
    pip install pandas-td td-client && \
    pip install pystan && \
    pip install fbprophet

CMD ["python"]
