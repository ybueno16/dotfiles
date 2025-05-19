return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "sidlatau/neotest-dart",
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-dart" {
          command = "flutter",
          use_lsp = true,
        },
      },
    }

    -- Mapeamentos para testes
    vim.keymap.set("n", "<Leader>rt", function() require("neotest").run.run() end, { desc = "Run nearest test" })

    vim.keymap.set(
      "n",
      "<Leader>rf",
      function() require("neotest").run.run(vim.fn.expand "%") end,
      { desc = "Run all tests in file" }
    )

    vim.keymap.set("n", "<Leader>rs", function() require("neotest").run.stop() end, { desc = "Stop running tests" })

    vim.keymap.set(
      "n",
      "<Leader>ro",
      function() require("neotest").output.open { enter = true } end,
      { desc = "Open test output" }
    )

    vim.keymap.set(
      "n",
      "<Leader>rp",
      function() require("neotest").output_panel.toggle() end,
      { desc = "Toggle test output panel" }
    )

    vim.keymap.set("n", "<Leader>rl", function() require("neotest").run.run_last() end, { desc = "Run last test" })
  end,
}
