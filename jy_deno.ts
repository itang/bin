import * as toml from "https://deno.land/x/std/encoding/toml.ts";

function openUrl(url: string) {
  const p = Deno.run({ args: ["x-www-browser", url] });
  return p.status();
}

async function tomlContent(
  filePath: string = "/home/itang/bin/jiayou.toml"
): Promise<string> {
  const decoder = new TextDecoder("utf-8");
  const data = await Deno.readFile("/home/itang/bin/jiayou.toml");
  return decoder.decode(data);
}

function urlsFromToml(tomlContent: string): Array<string> {
  const obj = toml.parse(tomlContent);
  const urls: string[] = obj["urls"];
  return urls;
}

if (import.meta.main) {
  const content = await tomlContent();
  const urls = urlsFromToml(content);
  for (const url of urls) {
    openUrl(url);
  }
}
/*
const ps = (await tomlContent().then(urlsFromToml)).map(url => {
  console.log(url);
  return openUrl(url);
});

await Promise.all(ps);
*/
