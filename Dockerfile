FROM blockchain-03.cn.ibm.com:83/library/python:3.4.6-slim
COPY ./requirements.txt /app/requirements.txt
COPY . /app

WORKDIR /app

RUN pip install --upgrade -r /app/requirements.txt

EXPOSE 8000

CMD [ "python3","app.py" ]