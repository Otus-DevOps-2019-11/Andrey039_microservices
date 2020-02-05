FROM ruby:2.2-alpine AS build

ENV APP_HOME /app

#RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/

RUN apk add --no-cache build-base \
    && bundle install 

COPY . $APP_HOME

#CMD ["puma"]

FROM ruby:2.2-alpine 

ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292
ENV APP_HOME /app

#RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY --from=build $APP_HOME  $APP_HOME 
RUN ls $APP_HOME

CMD ["puma"]