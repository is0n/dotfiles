local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
  }
}

local hlargs_ok, hlargs = pcall(require, "hlargs")
if not hlargs_ok then
  return
end

hlargs.setup()
