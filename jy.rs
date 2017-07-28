#!/usr/bin/env run-cargo-script
//! This is a regular crate doc comment, but it also contains a partial
//! Cargo manifest.  Note the use of a *fenced* code block, and the
//! `cargo` "language".
//!
//! ```cargo
//! [dependencies]
//! time = "0.1.25"
//! toml = "0.4"
//! serde = "1.0.11"
//! serde_derive = "1.0.11"
//! process_path = "0.1.1"
//! ```
extern crate time;

extern crate serde;
#[macro_use]
extern crate serde_derive;
extern crate toml;
extern crate process_path;

use std::process::Command;
use std::io;
use std::fs::File;
use std::io::Read;
use std::path::PathBuf;
use process_path::get_executable_path;

#[derive(Debug, Deserialize)]
struct Config {
    urls: Vec<String>,
}

fn main() {
    println!("{}", time::now().rfc822z());
    let urls = get_urls_from_config().unwrap();

    for url in urls {
        Command::new("xdg-open").arg(url).spawn().expect(
            "xdg-open command failed to start",
        );
    }
}

fn get_urls_from_config() -> Result<Vec<String>, io::Error> {
    let mut path: PathBuf = get_shell_dir();
    path.push("jiayou");
    path.set_extension("toml");

    println!("load urls from {:?}...", path);
    let mut file = File::open(path)?;
    let mut content = String::new();
    file.read_to_string(&mut content)?;

    let config: Config = toml::from_str(&content).expect("toml parse error");

    Ok(config.urls)
}

fn get_shell_dir() -> PathBuf {
    //get_executable_path().unwrap()
    let mut p = PathBuf::new();
    p.push("/home/itang/bin");
    p
    /*let dir: PathBuf = match std::env::home_dir() {
        Some(path) => path,
        None => PathBuf::from(""),
    };
    dir
    */
}
