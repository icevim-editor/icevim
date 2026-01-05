# The IceVim Manifesto

Neovim is a fast-moving project. APIs are changed, deprecated or even removed.

While great for innovation, it is terrible for stability.

With IceVim, your config from today will work for as long as we do this.

## Why not just stick with Vim?

Vim lacks many "good ideas" from Neovim like the LSP client, Tree-sitter and Lua. We are forking specifically NOW due to the amount of good features Neovim has gotten, such as an LSP client, a native package manager, and more.

## What will you do?

We will backport fixes from Neovim and possibly Vim if compatible.

## What will you NOT do?

We will not add any new features, change APIs, deprecate APIs or remove APIs.

## Who is this for?

* People tired of config breakage
* Teams that need predictable tooling
* People who want to configure once and live with it forever

## Where did you fork this from?

IceVim has been forked from [this commit](https://github.com/neovim/neovim/commit/033302d97d48645c5083d2900a84099aa2943c20)

## What are your goals?

[x] Write MANIFESTO.md
[ ] Change documentation to match IceVim
[ ] Recruit maintainers
[ ] Create an appropiate test suite

## What will get backported?

* Critical bug fixes
* Critical bug fix pull requests that perfectly fix the issue but are not applicable to Neovim and therefore not merged
* Security vulnerability fixes
* Nothing else
