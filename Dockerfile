FROM octohost/ubuntu:13.10

RUN apt-get update && apt-get install -y git wget curl build-essential make libxslt-dev libxml2-dev libmysqlclient-dev libpq-dev libsqlite3-0 libsqlite3-dev software-properties-common libyaml-0-2 ruby1.9.1-dev
RUN wget -q http://dl.bintray.com/octohost/ruby/ruby-1.9.3-p545_amd64.deb && dpkg -i ruby-1.9.3-p545_amd64.deb
RUN gem install foreman bundler --no-ri --no-rdoc

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
