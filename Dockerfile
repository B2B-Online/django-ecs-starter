FROM public.ecr.aws/docker/library/python:3-slim

ENV DJANGO_SETTINGS_MODULE=django_ecs_starter.settings

# Set the working directory to /app
WORKDIR /app/django_ecs_starter

COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt --upgrade

COPY . /app

EXPOSE 8000

CMD daphne django_ecs_starter.asgi:application --bind=0.0.0.0