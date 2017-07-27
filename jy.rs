#!/usr/bin/env run-cargo-script
//! This is a regular crate doc comment, but it also contains a partial
//! Cargo manifest.  Note the use of a *fenced* code block, and the
//! `cargo` "language".
//!
//! ```cargo
//! [dependencies]
//! time = "0.1.25"
//! ```
extern crate time;

use std::process::Command;

fn main() {
    println!("{}", time::now().rfc822z());

    let urls = vec![
        "http://bbs.szhome.com/30017.html",
        "https://twitter.com",
        "https://github.com/stars?direction=desc&sort=updated",
        "http://www.douban.com",
        "http://www.weibo.com",
        "http://www.deftype.com",
        "http://www.oschina.net/",
        "http://www.infoq.com/",
        "http://36kr.com/",
        "https://elixirforum.com/",
        "https://github.com/trending/elixir",
        "https://github.com/trending",
        "https://github.com/trending/go",
        "https://github.com/trending/python",
        "https://www.reddit.com/r/reasonml/",
        "https://github.com/trending/rust",
        "https://www.reddit.com/r/rust",
    ];

    for url in urls {
        Command::new("xdg-open")
            .arg(url)
            .spawn()
            .expect("xdg-open command failed to start");
    }
}
