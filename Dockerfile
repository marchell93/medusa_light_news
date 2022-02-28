# pull official base image
FROM python:3

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /code

# install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# copy project
COPY . /code/
COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]
# EXPOSE 8000

#CMD ["python", "manage.py", "migrate"]
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# install psycopg2 dependencies
# RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
