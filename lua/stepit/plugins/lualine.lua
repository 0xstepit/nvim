return {
	"nvim-lualine/lualine.nvim",
    name = "Lualine",
    enabled = true,
    opts = {

    icons_enabled = false,
   globalstatus = false, -- lualine bar only under focused pane
    component_separators = {""}, -- { left = '', right = '' }
  sections = { -- displayied at the bottom
    lualine_a = {'branch'},
    lualine_b = {'diff', 'diagnostics'},
    lualine_c = {'mode', 'require"lsp-status".status()'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'filesize'},
    lualine_z = {'progress', 'location', 'searchcount'}
  },
  tabline = { -- displayied at the top
      lualine_a = {},
      lualine_b = {},
      lualine_c = {
        {
            'filename',
            file_status = true,      -- Displays file status (readonly status, modified status)
            newfile_status = false,  -- Display new file status (new file means no write after created)
            path = 3,
        },
      },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
  },
    },
}
