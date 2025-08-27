FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY mock_crm.py .
EXPOSE 5000
CMD ["python", "mock_crm.py"]