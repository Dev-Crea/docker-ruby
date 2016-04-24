# Ruby version
FROM ruby:slim

# Maintainer
MAINTAINER "VAILLANT Jérémy" <vaillant.jeremy@dev-crea.com>

# Customize bower
RUN echo '{ "allow_root": true, "interactive": false }' > /root/.bowerrc

# MAJ System
RUN apt-get update -qq && apt-get install -y build-essential node npm git

# Install bower
RUN npm install -g bower

# Prepare gem env (worker parallel, path gems)
ENV BUNDLE_JOBS=4 BUNDLE_PATH=/bundle
