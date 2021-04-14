//deno install -f --allow-write -n denoinit denoinit.ts

if (import.meta.main) {
  const mainContent =
    `import * as path from "https://deno.land/std/path/mod.ts";

console.log(path.normalizeGlob("/*"));

const port = parseInt(Deno.env.get("PORT") || "8080");

const body = new TextEncoder().encode("Hello World");

console.info(\`Listen on :\${port}...\`);
for await (const conn of Deno.listen({ port })) {
  (async () => {
    for await (const { respondWith } of Deno.serveHttp(conn)) {
      respondWith(new Response(body));
    }
  })();
}
`;

  await Deno.writeFile("main.ts", new TextEncoder().encode(mainContent));

  const vscodeSettingContent = `
// .vscode/settings.json
{
  "deno.enable": true,
  "deno.unstable": true,
  "deno.lint": true,
  "deno": {
    "suggest": {
      "imports": {
        "hosts": {
          "https://deno.land": true
        }
      }
    }
  }
}
`;

  await Deno.mkdir(".vscode");
  await Deno.writeFile(
    ".vscode/settings.json",
    new TextEncoder().encode(vscodeSettingContent),
  );
}
