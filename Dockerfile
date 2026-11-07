FROM python:3.12-slim
WORKDIR /app
COPY Desarrollo/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY Desarrollo/ .
EXPOSE 5000
CMD ["python", "app.py"]
