//deno install -f --allow-write denoinit denoinit.ts

if (import.meta.main) {
  const mainContent =
    `import { serve } from "https://deno.land/std@v0.39.0/http/server.ts";
const s = serve({ port: 8000 });
console.log("http://localhost:8000/");
for await (const req of s) {
  req.respond({ body: "Hello World\n" });
}
`;

  await Deno.writeFile("main.ts", new TextEncoder().encode(mainContent));

  const vscodeSettingContent = `
// .vscode/settings.json
{
  "deno.enable": true,
}
`;

  await Deno.mkdir(".vscode");
  await Deno.writeFile(
    ".vscode/settings.json",
    new TextEncoder().encode(vscodeSettingContent),
  );
}
