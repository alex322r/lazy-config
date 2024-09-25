return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim"
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      source = {

        require("none-ls.diagnostics.cpplint"),
        require("none-ls.formatting.jq"),
        require("none-ls.code_actions.eslint"),
        null_ls.builtins.formatting.stylua,

        null_ls.builtins.formatting.prettier,

        require("none-ls.diagnostics.eslint")
      }
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}
