return {
    'mhartington/formatter.nvim',
    config = function()
        local util = require "formatter.util"
        require("formatter").setup({
            logging = true,
            log_level = vim.log.levels.DEBUG,
            filetype = {
                lua = {
                    require("formatter.filetypes.lua").stylua,
                    function()
                        return {
                            exe = "stylua",
                            args = {
                                "--column-width", "120",
                                "--indent-type", "Spaces",
                                "--indent-width", "2",
                                "--search-parent-directories",
                                "--stdin-filepath", util.escape_path(util.get_current_buffer_file_path()),
                                "--", "-",
                            },
                            stdin = true,
                        }
                    end
                },
                ["*"] = {
                    require("formatter.filetypes.any").remove_trailing_whitespace,
                    function()
                        vim.lsp.buf.format({ async = true })
                    end,
                }
            }
        })

        -- Set up autoformat on save
        vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
        vim.api.nvim_create_autocmd("BufWritePost", {
            group = "FormatAutogroup",
            command = ":FormatWrite",
        })
    end
}
