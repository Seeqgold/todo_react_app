FROM denoland/deno:latest as base

WORKDIR /app

COPY . ./

EXPOSE 3000

RUN deno cache server.ts

CMD ["run", "--allow-net", "server.ts"]