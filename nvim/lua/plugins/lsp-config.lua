return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup {
        ensure_installed = { "dartls" },
      }
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require "lspconfig"
      lspconfig.tsserver.setup {
        capabilities = capabilities,
      }
      lspconfig.solargraph.setup {
        capabilities = capabilities,
      }
      lspconfig.html.setup {
        capabilities = capabilities,
      }
      lspconfig.cssls.setup {
        capabilities = capabilities,
      }
      lspconfig.jdtls.setup {
        capabilities = capabilities,
      }
      lspconfig.dartls.setup {
        capabilities = capabilities,
        on_attach = on_attach,
        cmd = {
          "/home/yuri-bueno/fvm/versions/3.29.3/bin/cache/dart-sdk/bin/dart",
          "language-server",
          "--protocol=lsp",
        },
        filetypes = { "dart" },
        init_options = {
          flutter = {
            enable = true,
          },
          closingLabels = true,
          flutterOutline = true,
          onlyAnalyzeProjectsWithOpenFiles = true,
          outline = true,
          suggestFromUnimportedLibraries = true,
        },
        settings = {
          dart = {
            completeFunctionCalls = true,
            showTodos = true,
            enableSnippets = true,
            analysisExcludedFolders = {
              vim.fn.expand "~/fvm/",
            },
          },
        },
      }
      lspconfig.gopls.setup {
        capabilities = capabilities,
      }
      lspconfig.rust_analyzer.setup {
        capabilities = capabilities,
      }
      lspconfig.clangd.setup {
        capabilities = capabilities,
      }
      --	lspconfig.html.setup({
      --		capabilities = capabilities,
      --	})
      lspconfig.angularls.setup {
        capabilities = capabilities,
        filetypes = { "typescript", "javascript" },
        init_options = {
          provideFormatter = true,
        },
      }
      lspconfig.bashls.setup {
        capabilities = capabilities,
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
