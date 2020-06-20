FROM python:alpine
WORKDIR /usr/app
ENV FLASK_APP /delivery/app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY /projeto_delivery/requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]