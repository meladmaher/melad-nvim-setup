--return {
--  {
--    "catppuccin/nvim",
--    name = "catppuccin",
--    opts = {
--      transparent_background = true,
--      styles = {
--        comments = { "italic" },
--        functions = {},
--        keywords = {},
--        variables = {},
--      },
--    },
--  },
--}


return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      styles = {
        comments = { "italic" },
      },
      custom_highlights = function(colors)
        return {
          StatusLine = { bg = "NONE" },
          StatusLineNC = { bg = "NONE" },
          WinBar = { bg = "NONE" },
          WinBarNC = { bg = "NONE" },
        }
      end,
    },
  },
}
