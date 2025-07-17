FROM jekyll/jekyll:latest

# Install git and any dependencies needed
RUN apk update && apk add --no-cache git

WORKDIR /srv/jekyll

COPY . .

RUN git --version
RUN bundle install

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve", "--watch", "--host", "0.0.0.0"]
