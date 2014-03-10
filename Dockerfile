FROM octohost/ruby-2.0

RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www; bundle install --deployment

EXPOSE 3000

CMD cd /srv/www; bundle exec padrino start --host 0.0.0.0
