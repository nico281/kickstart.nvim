vim.keymap.set('i', '<C-l>', function()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Enter' })

-- Harpoon

vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file, { desc = 'Harpoon add file' })
vim.keymap.set('n', '<leader>h1', function()
  require('harpoon.ui').nav_file(1)
end, { desc = 'Go to file 1' })
vim.keymap.set('n', '<leader>h2', function()
  require('harpoon.ui').nav_file(2)
end, { desc = 'Go to file 2' })
vim.keymap.set('n', '<leader>h3', function()
  require('harpoon.ui').nav_file(3)
end, { desc = 'Go to file 3' })
vim.keymap.set('n', '<leader>h4', function()
  require('harpoon.ui').nav_file(4)
end, { desc = 'Go to file 4' })
vim.keymap.set('n', '<leader>h5', function()
  require('harpoon.ui').nav_file(5)
end, { desc = 'Go to file 5' })
vim.keymap.set('n', '<leader>h6', function()
  require('harpoon.ui').nav_file(6)
end, { desc = 'Go to file 6' })

vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next, { desc = 'Go to next file' })
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev, { desc = 'Go to previous file' })
vim.keymap.set('n', '<leader>hm', require('harpoon.ui').toggle_quick_menu, { desc = 'Harpoon menu' })
vim.keymap.set('n', '<leader>tm', ':Telescope harpoon marks <CR>')

--Lazy
vim.keymap.set('n', '<leader>ls', require('lazy').sync, { desc = 'Lazy Sync' })
--LazyGit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = 'Lazy git' })
vim.keymap.set('n', '<leader>gb', ':ToggleBlame virtual<CR>', { desc = 'Git blame toggle' })

-- Save
vim.keymap.set('n', 'q', ':wa<CR>', { desc = 'Save' })

--nvim tree
vim.keymap.set('n', '<leader>we', ':NvimTreeFindFileToggle<CR>', { desc = 'Open/Close file tree' })

--window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })

-- windows resize

vim.keymap.set('n', '<leader><Left>', ':NvimTreeResize -2<CR>', { desc = 'Resize left' })
vim.keymap.set('n', '<leader><Right>', ':NvimTreeResize +2<CR>', { desc = 'Resize right' })

--format

vim.keymap.set({ 'n', 'v' }, '<leader>cf', function()
  local conform = require 'conform'
  conform.format {
    lsp_fallback = true,
    async = true,
    timeout_ms = 500,
  }
end, { desc = '[C]ode [F]ormat' })

-- git blame
vim.keymap.set('n', '<leader>gb', ':BlameToggle<CR>', { desc = 'Git blame toggle' })
