#getting base image windows
FROM ubuntu

MAINTAINER Mariam Senzia<mariamsenzia@gmail.com>

WORKDIR /app

COPY storefront /app
COPY playground /app

RUN apt-get update

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]

