local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

vim.treesitter.language.register("html", "hbs")

parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = {"src/parser.c"},
    branch = "main",
  },
  filetype = "blade"
}

vim.filetype.add({
  pattern = {
    ['.*%.blade.php'] = 'blade'
  }
})
