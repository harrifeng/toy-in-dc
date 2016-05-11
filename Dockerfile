FROM ruby:2.2.0

ENV http_proxy http://proxy.sin.sap.corp:8080
ENV https_proxy http://proxy.sin.sap.corp:8080
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ADD ./toy_app /myapp
WORKDIR /myapp
RUN bundle install
