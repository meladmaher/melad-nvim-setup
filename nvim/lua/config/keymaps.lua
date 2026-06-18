-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here



-- C++ RUN + TERMINAL TOGGLE

local term_win = nil
local term_buf = nil

-- F5 = Run C++
vim.keymap.set("n", "<F5>", function()
  vim.cmd("w")

  vim.cmd("botright split")
  vim.cmd("resize 12")

  local file = vim.fn.expand("%")
  local out = vim.fn.expand("%:r")

  vim.cmd("terminal bash -c 'g++ " .. file .. " -o " .. out .. " && ./" .. out .. "'")

  term_win = vim.api.nvim_get_current_win()
  term_buf = vim.api.nvim_get_current_buf()
end, { desc = "Run C++" })


-- F4 = Close terminal fully
vim.keymap.set("n", "<F4>", function()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)

    if vim.bo[buf].buftype == "terminal" then
      vim.api.nvim_win_close(win, true)
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end

  term_win = nil
  term_buf = nil
end, { desc = "Close Terminal" })
