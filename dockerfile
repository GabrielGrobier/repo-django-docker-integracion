FROM python:3.12-slim
WORKDIR /app
COPY dockerweb /app/
COPY requerimientos.txt /app/
RUN pip install -r /app/requerimientos.txt
RUN cd /app/dockerweb
EXPOSE 8000
CMD [ "python","manage.py","runserver", "0.0.0.0:8000" ]