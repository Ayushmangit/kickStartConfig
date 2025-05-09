-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'barrett-ruth/live-server.nvim',
    build = 'npm install -g live-server',
    config = function()
      require('live-server').setup()
    end,
    cmd = { 'LiveServerStart', 'LiveServerStop' },
  },
  {
    'windwp/nvim-ts-autotag',
    event = 'VeryLazy',
    enable_close = true,
    enable_rename = true,
    filetypes = { 'html', 'jsx', 'tsx' },
  },
  { -- This helps with php/html for indentation
    'captbaritone/better-indent-support-for-php-with-html',
  },
  { -- This helps with ssh tunneling and copying to clipboard
    'ojroques/vim-oscyank',
  },
  { -- This generates docblocks
    'kkoomen/vim-doge',
    build = ':call doge#install()',
  },
  { -- Git plugin
    'tpope/vim-fugitive',
  },
  { -- Show historical versions of the file locally
    'mbbill/undotree',
  },
  { -- Show CSS Colors
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup {}
    end,
  },
  {
    'mattn/emmet-vim',
    ft = { 'html', 'css', 'javascriptreact', 'typescriptreact' }, -- Load only for these filetypes
    init = function()
      vim.g.user_emmet_mode = 'n' -- Normal + Insert mode
      vim.g.user_emmet_leader_key = '<C-y>' -- Trigger key
    end,
  },
  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    cmd = { 'LazyGit' },
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'Open LazyGit' },
    },
  },
}
