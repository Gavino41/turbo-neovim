return {
  "mason-org/mason.nvim",
  version = "^2.0.0",
  dependencies = {
    { "mason-org/mason-lspconfig.nvim", version = "^2.0.0" },
    "neovim/nvim-lspconfig",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "eslint",
        "jsonls",
        "html",
        "cssls",
        "tailwindcss",
        "golangci_lint_ls",
        "lua_ls",
        "pyright",
      },
      automatic_enable = true,
    })

    -- Configure servers using vim.lsp.config
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })

    vim.lsp.config("pyright", {
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
          },
        },
      },
    })
  end,
}

