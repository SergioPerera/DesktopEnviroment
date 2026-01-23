return {
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = "cd app && npm install",
    cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },
    config = function()
      -- Usa Chromium
      vim.g.mkdp_browser = "chromium"

      -- Actualización en tiempo real sin guardar
      vim.g.mkdp_refresh_slow = 0

      -- No abrir automáticamente
      vim.g.mkdp_auto_start = 0

      -- Cerrar al cerrar el buffer
      vim.g.mkdp_auto_close = 1
    end,
  },
}
