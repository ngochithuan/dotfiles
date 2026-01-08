-- helper function (giữ nguyên style của bạn)
function ColorMyPencils(color)
  color = color or "rose-pine-moon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

  -- simple colorscheme (không auto apply)
  {
    "erikbackman/brightburn.vim",
    lazy = true,
  },

  -- TOKYONIGHT (gộp lại 1 lần)
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "storm",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dark",
      },
    },
  },

  -- GRUVBOX
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = true,
    opts = {
      terminal_colors = true,
      undercurl = true,
      underline = false,
      bold = true,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      strikethrough = true,
      inverse = true,
      contrast = "",
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  -- 🌹 ROSE-PINE (DEFAULT THEME)
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,          -- load ngay khi start
    priority = 1000,       -- đảm bảo thắng các theme khác
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        styles = {
          italic = false,
        },
      })

      ColorMyPencils("rose-pine-moon")
    end,
  },
}

