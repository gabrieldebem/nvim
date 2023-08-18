require("flutter-tools").setup {
    ui = {
        border = "rounded",
        notification_style = 'plugin'
    },
    decorations = {
        statusline = {
            app_version = true,
            device = true,
            project_config = true,
        }
    },
    debugger = {
        enabled = true,
        run_via_dap = true,
        exception_breakpoints = {},
        -- register_configurations = function(_)
        --     require("dap").configurations.dart = {
        --         {
        --             type = "dart",
        --             request = "launch",
        --             name = "Launch Dart Program",
        --             -- The nvim-dap plugin populates this variable with the filename of the current buffer
        --             program = "${file}",
        --             -- The nvim-dap plugin populates this variable with the editor's current working directory
        --             cwd = "${workspaceFolder}",
        --             args = { "--help" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
        --         }
        --     }
        -- end,
    },
    flutter_path = "/opt/homebrew/bin/flutter",
    flutter_lookup_cmd = nil,
    fvm = false,
    widget_guides = {
        enabled = false,
    },
    closing_tags = {
        highlight = "InfoMsg",
        prefix = " >",
        enabled = true
    },
    dev_log = {
        enabled = true,
        notify_errors = true,
        open_cmd = "tabedit",
    },
    dev_tools = {
        autostart = true,
        auto_open_browser = false,
    },
    outline = {
        open_cmd = "30vnew", -- command to use to open the outline buffer
        auto_open = false -- if true this will open the outline automatically when it is first populated
    },
    lsp = {
        color = {
            enabled = false,
            background = false,
            background_color = nil,
            foreground = false,
            virtual_text = true,
            virtual_text_str = "■",
        },
        capabilities = function(config)
            config.specificThingIDontWant = false
            return config
        end,
        settings = {
            showTodos = true,
            completeFunctionCalls = true,
            analysisExcludedFolders = { "/opt/homebrew/bin/flutter" },
            renameFilesWithClasses = "always",
            enableSnippets = true,
            updateImportsOnRename = true,
        }
    }
}

require("telescope").load_extension("flutter")
