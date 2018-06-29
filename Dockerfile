FROM nimlang/nim
LABEL name "joker"

RUN mkdir /app
WORKDIR /app

COPY . /app
RUN nimble refresh
RUN nimble build

EXPOSE 5000
ENTRYPOINT ["bin/joker"]