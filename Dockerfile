FROM ruby:3.1.3

# Add Node.js and Yarn to the official Ruby image
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y build-essential libpq-dev nodejs yarn

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle config set --local without 'production' \
  && bundle install

COPY . /app

RUN yarn install --check-files

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
