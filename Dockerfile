FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /membership
WORKDIR /membership
ADD Gemfile /membership/Gemfile
ADD Gemfile.lock /membership/Gemfile.lock
RUN bundle install
ADD . /membership