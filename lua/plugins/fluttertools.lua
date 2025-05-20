return {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- opcional, mas melhora UI
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap", -- se for usar o debugger
    },
    config = function()
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
          open_cmd = "30vnew",
          auto_open = false
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
  
      -- carrega a extensão do telescope
      require("telescope").load_extension("flutter")
    end
  }  