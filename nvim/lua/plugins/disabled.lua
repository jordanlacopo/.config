-- List of disabled plugins
return {
  { "nvimdev/dashboard-nvim", enabled = false },
  {
    "folke/noice.nvim",
    opts = {
      notify = {
        enabled = false,
      },
    },
  },
  { "rcarriga/nvim-notify", enabled = false },
}
