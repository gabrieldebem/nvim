return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    require("git-conflict").setup({
      default_mappings = true, -- habilita os mapeamentos padrão
      default_commands = true, -- habilita os comandos padrão
      disable_diagnostics = false, -- mantém os diagnostics visíveis durante conflitos
      list_opener = 'copen', -- comando para abrir a lista de conflitos
      highlights = {
        incoming = 'DiffAdd',
        current = 'DiffText',
      }
    })
  end
}
