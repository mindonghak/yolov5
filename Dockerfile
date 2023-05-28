FROM python:latest
RUN mkdir yolov5/
COPY detect.py yolov5/detect.py
COPY requirements.txt yolov5/requirements.txt
WORKDIR /yolov5/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "detect.py"]