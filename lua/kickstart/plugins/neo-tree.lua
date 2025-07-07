-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      window = {
        mappings = {
          ['o'] = { 'open' },
          ['O'] = {
            'show_help',
            nowait = false,
            config = { title = 'Order by', prefix_key = 'O' },
          },
          ['Oc'] = { 'order_by_created', nowait = false },
          ['Od'] = { 'order_by_diagnostics', nowait = false },
          ['Og'] = { 'order_by_git_status', nowait = false },
          ['Om'] = { 'order_by_modified', nowait = false },
          ['On'] = { 'order_by_name', nowait = false },
          ['Os'] = { 'order_by_size', nowait = false },
          ['Ot'] = { 'order_by_type', nowait = false },
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
