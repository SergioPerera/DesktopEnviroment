return {
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
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
