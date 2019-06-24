FROM elixir:1.8.1-alpine


ENV HOME=/opt/app
WORKDIR $HOME

RUN apk update
RUN apk add  bash curl nodejs npm inotify-tools postgresql-client
RUN apk add git


#install phoenix dependenices
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force hex phx_new 1.4.0


COPY . .


RUN cd $HOME/assets \
    && npm install \  
    && cd ..
RUN mix deps.get


EXPOSE 4000
RUN chmod +x ./entry.sh
ENTRYPOINT [ "./entry.sh" ]





