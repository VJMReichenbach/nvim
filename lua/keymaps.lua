return {
  -- Clear highlights on search when pressing <Esc> in normal mode
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>'),

  vim.keymap.set(
    'n',
    '<leader>q',
    vim.diagnostic.setloclist,
    { desc = 'Open diagnostic [Q]uickfix list' }
  ),

  -- Exit terminal mode in the builtin terminal
  vim.keymap.set(
    't',
    '<Esc><Esc>',
    '<C-\\><C-n>',
    { desc = 'Exit terminal mode' }
  ),

  -- Disable arrow keys in normal mode
  vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>'),
  vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>'),
  vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>'),
  vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>'),

  -- Keybinds to make split navigation easier.
  vim.keymap.set(
    'n',
    '<C-h>',
    '<C-w><C-h>',
    { desc = 'Move focus to the left window' }
  ),
  vim.keymap.set(
    'n',
    '<C-l>',
    '<C-w><C-l>',
    { desc = 'Move focus to the right window' }
  ),
  vim.keymap.set(
    'n',
    '<C-j>',
    '<C-w><C-j>',
    { desc = 'Move focus to the lower window' }
  ),
  vim.keymap.set(
    'n',
    '<C-k>',
    '<C-w><C-k>',
    { desc = 'Move focus to the upper window' }
  ),

  -- which-key show keymaps
  vim.keymap.set(
    'n',
    '<leader>?',
    '<cmd>WhichKey<CR>',
    { desc = 'Show which-key keymaps' }
  ),

  -- Save on <leader>w
  vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = '[W]rite buffer' }),

  -- show error explanation
  vim.keymap.set(
    'n',
    '<leader>s',
    vim.diagnostic.open_float,
    { desc = '[S]how error' }
  ),

  -- Toggle virtual lines
  vim.keymap.set('n', '<leader>t', function()
    local new_config = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config { virtual_lines = new_config }
  end, { desc = '[T]oggle diagnostic virtual_lines' }),
}
