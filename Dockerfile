FROM ruby:3.0.2

LABEL maintainer="Your Name <your.email@example.com>"
LABEL version="1.0"
LABEL description="This image is for my Rails project"

RUN apt-get update && apt-get install -y nodejs yarn

COPY . /app
WORKDIR /app

RUN bundle install

ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server", "-b", "0.0.0.0"]

# RUN rm -rf /var/lib/apt/lists/* &&\
#       curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
#       echo "deb https://dl.yarnpkg.com/debian/ stable main"  &&\
#       apt-get update &&\
#       apt-get install -y --no-install-recommends libjemalloc1 &&\
#       apt-get install -y build-essential libpq-dev nodejs vim gsfonts lynx locales libarchive13

# ARG RAILS_ENV
# ARG REDIS_HOST="redis"
# ENV REDIS_HOST=$REDIS_HOST
# ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1
# #the subsequent RUN call accesses the RAILS_ENV ENV variable within the container
# # RUN if [ "$RAILS_ENV" = "production"  ] ; then echo "production env"; else echo "non-production env: $RAILS_ENV"; fi	

# WORKDIR $APP_HOME
# RUN cd $APP_HOME
# COPY . $APP_HOME

# ENV PATH="${PATH}:${APP_HOME}/bin"
# RUN export LC_ALL=en_US.UTF-8
# RUN export LANG=en_US.UTF-8
# RUN locale-gen en_US.UTF-8
# RUN export PATH=$PATH:/app/bin
# COPY Gemfile* $APP_HOME/

# ENV BUNDLER_VERSION 2.2.20
# RUN gem update --system \
#     && gem install bundler -v $BUNDLER_VERSION  \
#     && gem install bcrypt --platform=ruby \
#     && bundle pack && bundle install \
#     && bundle exec rake assets:precompile 
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh && chmod +x /app/start.sh
# ENTRYPOINT ["entrypoint.sh"]

# CMD ["/app/start.sh"]
