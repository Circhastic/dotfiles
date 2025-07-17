return {
  'catppuccin/nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  lazy = false,
  config = function()
    local catppuccin = require 'catppuccin'

    -- Set initial transparency state
    local transparent_background = true

    -- Function to apply the Catppuccin configuration with transparency option
    local function apply_catppuccin()
      catppuccin.setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        background = {
          light = 'latte',
          dark = 'mocha',
        },
        transparent_background = transparent_background,
        show_end_of_buffer = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = 'dark',
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { 'italic' },
          conditionals = { 'italic' },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end

    -- Initial call to apply settings
    apply_catppuccin()

    -- Toggle transparency and reapply settings
    local toggle_transparency = function()
      transparent_background = not transparent_background
      apply_catppuccin()
    end

    -- Key mapping to toggle transparency
    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true, desc = 'Toggle Background Transparency' })
  end,
}
