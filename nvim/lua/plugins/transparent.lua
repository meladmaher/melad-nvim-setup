return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        enable = true,
      })

      vim.cmd([[
        hi Normal guibg=NONE
        hi NormalNC guibg=NONE
        hi NormalFloat guibg=NONE
        hi SignColumn guibg=NONE
        hi CursorLine guibg=NONE
        hi EndOfBuffer guibg=NONE
      ]])

      vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "Cmdline", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "CmdLine", { bg = "NONE" })
    end,
  },
}
