return {
  {
    "HakonHarnes/img-clip.nvim",
    ft = { "markdown" },
    opts = {
      default = {
        dir_path = "images",
        prompt_for_file_name = false,
        relative_to_current_file = true,
      },
    },
    keys = {
      {
        "<leader>pi",
        function()
          require("img-clip").paste_image()
        end,
        desc = "Paste image from clipboard",
      },
    },
  },
}
