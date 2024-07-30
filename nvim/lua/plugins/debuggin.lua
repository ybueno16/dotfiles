return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        -- Add Dart and Flutter debug adapters
        dap.adapters.dart = {
            type = 'executable',
            command = 'dart',
            args = {'debug_adapter'}
        }
        dap.adapters.flutter = {
            type = 'executable',
            command = 'flutter',
            args = {'debug_adapter'}
        }

        -- Add Dart and Flutter debug configurations
        dap.configurations.dart = {
            {
                type = "dart",
                request = "launch",
                name = "Launch dart",
                dartSdkPath = "/opt/flutter/bin/cache/dart-sdk/bin/dart",
                flutterSdkPath = "/opt/flutter/bin/flutter",
                program = "${workspaceFolder}/lib/main.dart",
                cwd = "${workspaceFolder}",
            },
            {
                type = "flutter",
                request = "launch",
                name = "Launch flutter",
                dartSdkPath = "/opt/flutter/bin/cache/dart-sdk/bin/dart",
                flutterSdkPath = "/opt/flutter/bin/flutter",
                program = "${workspaceFolder}/lib/main.dart",
                cwd = "${workspaceFolder}",
            }
        }

        require("dap-go").setup()
        require("dapui").setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<Leader>de", dap.continue, {})
    end,
}
