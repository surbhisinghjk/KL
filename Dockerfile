FROM python:3.9.16-slim-buster
COPY . .
RUN pip install -r requirments.txt
CMD python m.py
