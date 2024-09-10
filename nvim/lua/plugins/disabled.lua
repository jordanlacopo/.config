-- List of disabled plugins
return {
  { "akinsho/bufferline.nvim", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = true },
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
