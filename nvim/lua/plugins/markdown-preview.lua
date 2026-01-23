return {
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },

    -- Linux:
    build = "cd app && npm install",
    -- Windows (si el de arriba no va, comenta el de Linux y usa este):
    -- build = "cd app && npm.cmd install",

    config = function()
      -- Usa Chromium
      vim.g.mkdp_browser = "chromium"

      -- Preview en tiempo real sin guardar
      vim.g.mkdp_refresh_slow = 0

      -- No abrir automáticamente
      vim.g.mkdp_auto_start = 0

      -- Cerrar al cerrar el buffer
      vim.g.mkdp_auto_close = 1
    end,
  },
}
