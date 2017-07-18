#!/usr/bin/env ocaml

let urls = [
  "http://bbs.szhome.com/30016.html";
  "https://twitter.com";
  "https://github.com/stars?direction=desc&sort=updated";
  "http://www.douban.com";
  "http://www.weibo.com";
  "http://www.deftype.com";
  "http://www.oschina.net/";
  "http://www.infoq.com/";
  "http://36kr.com/";
  "https://elixirforum.com/";
  "https://github.com/trending/elixir";       
  "https://github.com/trending";
  "https://github.com/trending/go";
  "https://github.com/trending/python";
  "https://www.reddit.com/r/reasonml/";
  "https://github.com/trending/rust";
  "https://www.reddit.com/r/rust";
]

let xdg_open url =
  let _:int = Sys.command ("xdg-open" ^ " " ^ url) in
    ();;

urls |> List.iter xdg_open

(*let rec browse urls = List.iter xdg_open urls
  match urls with
  | []       -> 0
  | hd::tail -> begin
      let _:int = Sys.command ("xdg-open" ^ " " ^ hd) in
      browse tail
    end;; *)

(* browse urls *)
