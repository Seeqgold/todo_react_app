FROM denoland/deno:latest as base

WORKDIR /app

COPY . ./

EXPOSE 80

RUN deno cache server.ts

CMD ["run", "--allow-net", "server.ts"]