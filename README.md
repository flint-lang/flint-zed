# flint-zed

Zed extension to provide syntax highlighting and LSP support for the Flint Programming Langauge.

This extension has not been published in the Zed extension market place. Until we publish it there you need to install it manually. For this, you first need to install `rustup`, then you need to execute

```sh
rustup target add wasm32-wasip2 
```

and finally in the Zed command palette (Ctr+Shift+X) you need to search for `Install Dev Extension`, select this repository after you cloned it and click okay. This will compile and install the Flint extension into Zed and all setup will be finished.
