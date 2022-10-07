FROM python:3.9-alpine

LABEL version="1.0.0"
LABEL repository="https://github.com/5tigerjelly/chalice-action"
LABEL homepage="https://github.com/5tigerjelly/chalice-action"
LABEL maintainer="Chris Oh <chris@5tigerjelly.com> (https://5tigerjelly.com)"

COPY entrypoint.sh /entrypoint.sh

RUN pip install chalice boto3

ENTRYPOINT ["/entrypoint.sh"]
