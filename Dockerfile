FROM ruby:2.4

RUN mkdir /illumination
WORKDIR /illumination

ADD Gemfile /illumination/Gemfile
ADD Gemfile.lock /illumination/Gemfile.lock

RUN bundle install
ADD . /illumination
