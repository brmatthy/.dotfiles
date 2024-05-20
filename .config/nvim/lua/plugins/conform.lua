-- Add formatting, see configs.conform for the configuration
return {
  "stevearc/conform.nvim",
  event = 'BufWritePre',
  config = function()
    require "configs.conform"
  end,
}
