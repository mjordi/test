FROM gcc:latest
RUN mkdir /myapp
WORKDIR /myapp

RUN wget http://s3.amazonaws.com/ec2-downloads/ec2-api-tools.zip

# ADD main.c /myapp/main.c
RUN gcc -o myapp main.c

 -O /tmp/ec2tools.zip && \
    mkdir /usr/local/aws && unzip -d /usr/local/aws /tmp/ec2tools.zip && rm /tmp/ec2tools.zip && \
    mv /usr/local/aws/ec2-api-tools-* /usr/local/aws/ec2

EXPOSE 8888
CMD ["./myapp"]