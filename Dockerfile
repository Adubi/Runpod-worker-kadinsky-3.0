# Include Python
FROM python:3.11.1-buster

# Define your working directory
WORKDIR /

# Install runpod
RUN pip install runpod diffusers transformers accelerate sentencepiece

# Add your file
ADD main.py test_input.json ./

# Call your file when your container starts
CMD [ "python", "-u", "./main.py" ]