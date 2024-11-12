return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20, -- Height of the terminal window
      open_mapping = [[<C-\>]], -- Keybinding to toggle the terminal
      hide_numbers = true, -- Hide line numbers in terminal buffers
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2, -- Darken the terminal by a factor (default: 2)
      start_in_insert = true, -- Start in insert mode
      insert_mappings = true, -- Apply open_mapping in insert mode
      terminal_mappings = true, -- Apply open_mapping in terminal mode
      persist_size = true,
      direction = 'float', -- Options: 'vertical', 'horizontal', 'tab', 'float'
      close_on_exit = true, -- Close terminal when the process exits
      shell = vim.o.shell, -- Shell to use
      float_opts = {
        border = 'curved',
        winblend = 0,
      },
    }
  end,
}
