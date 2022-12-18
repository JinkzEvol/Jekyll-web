#Create a jekyll container from a Ruby Alpine image

#Ata a minimum use Ruby 2.5 or later
From ruby:2.7-alpine3.15

# Add jekyll depedencies  to alpine
RUN apk update
RUN apk add --nocache build-base gcc cmake git

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll
