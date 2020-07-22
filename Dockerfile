FROM python:3.8

ENV USERNAME=myuser
ENV UID=1000
RUN useradd -m -s /bin/bash -N -u ${UID} ${USERNAME}
USER ${USERNAME}
WORKDIR /home/${USERNAME}

# Copy required files
COPY app_barplot.py .
COPY app_histogram.py .
COPY data data
COPY requirements.txt .

RUN pip install -r requirements.txt

# Start up kernel
CMD ["python", "-m","--ip=0.0.0.0", "-f"]


