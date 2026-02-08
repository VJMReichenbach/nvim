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
  ruff `# Python linter/formatter` \
  ty `# Python type checker` \
  rust-analyzer `# Rust language server` \
  lua-language-server `# Lua LSP` \
  stylua `# Lua formatter` \
  texlab `# LaTeX language server` \
  tex-fmt-bin `# LaTeX formatter` \
  tinymist `# Typst language server` \
  typstyle `# Typst formatter` \
  mdformat `# Markdown formatter` \
  superhtml-bin `# HTML language server`
```

______________________________________________________________________

This config was originally based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
Some of it was also inspired by my friends [personal config](https://github.com/lukasgeis/dotfiles).
