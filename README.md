# Statically compiled tmux with musl libc

Because there are times where tmux is not easily installable on remote systems 
e.g. on Synology NAS boxes.

## Requirements

- Docker
- GNU tar

## To build

```
make
```

And you'll end up with an stripped tmux binary for x86_64 Linux in `out/bin`.

