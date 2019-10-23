FROM python:slim

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV FLASK_APP=app.py

# Required dependencies
RUN mkdir app/
COPY . app/
WORKDIR app/
EXPOSE 5000

# Preparing the application
RUN pip3 install -r requirements.txt
CMD flask run --host=0.0.0.0
