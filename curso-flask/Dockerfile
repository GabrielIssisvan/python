FROM python:alpine
WORKDIR /usr/app/
ENV FLASK_APP ./delivery/app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY * /usr/app/

RUN pip install -e .['dev']
CMD ["flask", "run"]