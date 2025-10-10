# Use official Ruby image
FROM ruby:3.2

WORKDIR /app

COPY . /app

# Install dependencies if Gemfile exists
RUN if [ -f Gemfile ]; then bundle install; fi

CMD ["ruby", "main.rb"]
