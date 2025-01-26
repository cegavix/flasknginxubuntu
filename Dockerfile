FROM python:3.11-slim 
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/ .
ENV FLASK_APP=app.py    
# CMD ["flask", "run","--host=0.0.0.0","--port=5000"]
# Command to run the application using Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]