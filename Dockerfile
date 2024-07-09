FROM python:3.9.16-slim-buster
COPY . .
RUN pip3 install -r requirments.txt
CMD python m.py
