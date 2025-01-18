return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          ' ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
          ' ████╗  ██║██║   ██║██║████╗ ████║',
          ' ██╔██╗ ██║██║   ██║██║██╔████╔██║',
          ' ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
          ' ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
          ' ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
        },
        center = {
          { icon = '📂  ', desc = 'File Browser         ', action = 'Telescope file_browser' },
          { icon = '🔍  ', desc = 'Find File           ', action = 'Telescope find_files' },
          { icon = '📜  ', desc = 'Recent Files        ', action = 'Telescope oldfiles' },
          { icon = '📝  ', desc = 'New File            ', action = 'enew' },
          { icon = '⚙️   ', desc = 'Configuration       ', action = 'edit $MYVIMRC' },
          { icon = '💻  ', desc = 'Quit                ', action = 'qa' },
        },
        footer = function()
          return { '🚀 Neovim loaded successfully! Enjoy coding.' }
        end,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
