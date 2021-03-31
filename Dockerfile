#Base Imgage
From python:3

#In docker were gonna create a working directory
WORKDIR /usr/src/app


#Copy files from slack_demo to the working directory in docker. The dot (.) at the end just means ./ working directory
COPY flask_demo_api.py .
COPY unittest_api.py .
COPY requirement.txt .

#intall depedencies
RUN pip install --no-cache -r requirement.txt


# Run code
CMD ["python", "./unittest_api.py"]


