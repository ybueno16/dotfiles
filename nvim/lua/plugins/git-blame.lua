return {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    keys = {
        {
            "<leader>gb",
            function()
                require("gitblame").toggle()
            end,
            desc = "Toggle Git Blame",
        },
    },
    opts = {
        enabled = false,  -- Começa desabilitado
        message_template = " <summary> • <date> • <author> • <<sha>>",
        date_format = "%d-%m-%Y %H:%M:%S",
        virtual_text_column = 1,
    },
}
