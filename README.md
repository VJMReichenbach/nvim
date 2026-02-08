<a href="https://dotfyle.com/VJMReichenbach/nvim"><img src="https://dotfyle.com/VJMReichenbach/nvim/badges/leaderkey?style=for-the-badge" /></a>
<a href="https://dotfyle.com/VJMReichenbach/nvim"><img src="https://dotfyle.com/VJMReichenbach/nvim/badges/plugin-manager?style=for-the-badge" /></a>

This repository contains my neovim config.
The rest of my dotfiles can be found [here](https://github.com/VJMReichenbach/dotFiles).

______________________________________________________________________

I don't use [Mason](https://github.com/mason-org/mason.nvim) anymore to manage the external programs for neovim.
So I need to install all language servers, linters and formatters via the system package manager.
Some of them are only in the AUR, so I am using `yay`:

```bash
yay -S \
  ruff \ # python formatter/linter
  ty \ # python type checker
  rust-analyzer \ # rust LSP
  lua-language-server \ # lua LSP
  stylua \ # lua formatter
  texlab \ # LaTeX LSP
  tex-fmt \ # LaTeX formatter
  tinymist \ # typst LSP
  typstyle \ # typst formatter
  mdformat \ # markdown formatter
  superhtml # html formatter
```

______________________________________________________________________

This config was originally based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
Some of it was also inspired by my friends [personal config](https://github.com/lukasgeis/dotfiles).
