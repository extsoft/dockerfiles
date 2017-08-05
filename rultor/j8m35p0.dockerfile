FROM maven:3.5.0-jdk-8
LABEL maintainer="Dmytro Serdiuk <dmytro.serdiuk@gmail.com>"
RUN apt-get update
RUN curl -sSL https://rvm.io/mpapis.asc | gpg2 --import - && \
    curl -L https://get.rvm.io | bash -s stable && \
    /bin/bash -l -c "rvm requirements && rvm install 2.4.0 && gem update && gem install pdd"
ENTRYPOINT ["/bin/bash", "-l", "-c"]
