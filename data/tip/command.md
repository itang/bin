# command

## Usage

```
if ! command -v diesel >/dev/null 2>&1; then
    cargo install diesel_cli --no-default-features --features=sqlite > /dev/null
fi
```
