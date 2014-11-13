FROM phusion/passenger-nodejs:0.9.14

ENV HOME /root

CMD ["/sbin/my_init"]

# use app user UID 9999, and place application in /home/app

RUN curl http://install.meteor.com/ | sh


RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
