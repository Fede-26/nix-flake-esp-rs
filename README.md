# Nix Flake for esp-rs

> Inspired by [ede1998](https://github.com/oxalica/rust-overlay/issues/89#issuecomment-2535801379).

**THIS IS FOR `no_std`!**

Currently only *x86_64-linux* is supported.

## Versions

- gcc: 14.2.0_20241119
- rust (espressif fork): 1.84.0.0

## How to use it

> **THE PATH OF THE PROJECT MUSTN'T CONTAIN SPACES!** (If you know why please tell me...)

Use the template function on github or

1. Clone the repository
3. Remove the `.git` directory.
2. Use `direnv allow` if you have *direnv*, or `nix develop`.

Alternatively just copy `flake.nix` and `esp-rs.nix`.

If you want you can run `cargo generate esp-rs/esp-template --init --force-git-init` to create a new project, but check the versions of the dependencies in `Cargo.toml`, because some of them aren't up to date and give errors.
In particular esp-hal gives problem if not at 1.23.1, at least from experience.

The files in this repository regarding rust are from an example of `esp-rs-hal` and are for *ESP32S3*,
if you have a different chip just change the relevant files or generate a new project from the templates.