# Simple Jekyll Docker setup
FROM ruby:3.2-alpine

WORKDIR /srv/jekyll

# Install Jekyll and dependencies
RUN apk add --no-cache build-base git \
    && gem install bundler jekyll

# Copy files and install gems
COPY Gemfile* ./
RUN bundle install

# Copy the rest of the site
COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]
