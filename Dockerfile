FROM ruby:3.2-bullseye AS base
RUN apt update -qq && apt install -y build-essential apt-utils libpq-dev nodejs
WORKDIR /app
RUN gem install bundler

FROM base AS dev

FROM base AS production
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .
EXPOSE 3000
ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "rails" ,"s", "-b", "0.0.0.0", "-p", "3000"]