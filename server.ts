import { serve } from "https://deno.land/std/http/server.ts";

serve(req => new Response("Hello world from Deno!"), { port: 8080 });

console.log(`HTTP server is running at: http://localhost:8080/`);