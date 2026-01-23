return {
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },

    -- En vez de npm install (ensucia con package-lock), usa el instalador del plugin
    build = "cd app && ./install.sh",

    config = function()
      vim.g.mkdp_browser = "chromium"
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 1
    end,
  },
}
