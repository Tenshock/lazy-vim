return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
        custom_filter = function(buf_number, _)
          -- Only show buffers with a valid name
          local buf_name = vim.fn.bufname(buf_number)
          return buf_name ~= ""
        end,
      },
    },
  },
}
