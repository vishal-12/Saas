FROM python:3.7

RUN mkdir /app
WORKDIR /app
ADD . /app/
#CMD ["source", "src/.venv/bin/activate"]
RUN pip install -r /app/src/requirements.txt

EXPOSE 5000
CMD ["python", "/app/src/run.py"]
