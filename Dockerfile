FROM cloudvalley/pabase:latest
LABEL maintainer Waylon Wang <waylon.act@gmail.com>

COPY requirements.txt .

ENV PIP_REPO=https://pypi.douban.com/simple
RUN pip install --upgrade pip -i $PIP_REPO \
    && pip install -r requirements.txt -i $PIP_REPO

CMD ["python3"]
