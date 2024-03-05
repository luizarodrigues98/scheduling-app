FROM ruby:3.2-bullseye
RUN apt update -qq && apt install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /app
RUN gem install bundler
COPY Gemfile* ./
RUN bundle install

ADD . /app

ARG DEFAULT_PORT 3000

EXPOSE ${DEFAULT_PORT}

CMD [ "bundle","exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"]
