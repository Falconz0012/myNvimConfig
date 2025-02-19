return {
  {
    "williamboman/mason.nvim",
    opts={
      ensure_installed= {
        "clang-format",
      }
    },
  config = function ()
    require("mason").setup()
  end
  },
  {

    "williamboman/mason-lspconfig.nvim",
    config = function ()
    require("mason-lspconfig").setup({
      ensure_installed={"lua_ls","rust_analyzer","pyright","gopls","clangd","asm_lsp"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.asm_lsp.setup({})
      lspconfig.clangd.setup({})
      lspconfig.gopls.setup({})
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.rust_analyzer.setup({
        filetypes = {"rust"},
      })
      vim.keymap.set('n','K',vim.lsp.buf.hover, {})
      vim.keymap.set('n','<C-d>',vim.lsp.buf.declaration, {})
      vim.keymap.set('n','<C-E>',vim.lsp.buf.definition, {})
      vim.keymap.set({'n','v'},'<leader>ca', vim.lsp.buf.code_action,{})
    end
  }
}


