// deno install jy_deno jy_deno.ts --allow-net --allow-run --allow-read --allow-env

import * as toml from "https://deno.land/x/std/encoding/toml.ts";

function openUrl(url: string) {
  return Deno.run({ args: ["x-www-browser", url] }).status();
}

async function getTomlContent(
  filePath: string = `${Deno.dir("home")}/bin/jiayou.toml`
): Promise<string> {
  const data = await Deno.readFile(filePath);
  return new TextDecoder("utf-8").decode(data);
}

function getUrlsFromToml(tomlContent: string): Array<string> {
  /*const obj = toml.parse(tomlContent) as { //TODO:　object
    [key: string]: any;
  };
  */
  const obj = toml.parse(tomlContent) as { urls: string[]; };
  const urls: string[] = obj["urls"];
  return urls;
}

if (import.meta.main) {
  const content = await getTomlContent();
  getUrlsFromToml(content).forEach(openUrl);
}
/*
const ps = (await tomlContent().then(urlsFromToml)).map(url => {
  console.log(url);
  return openUrl(url);
});

await Promise.all(ps);
*/
