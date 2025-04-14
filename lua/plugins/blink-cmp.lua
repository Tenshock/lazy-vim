return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.sources = {
      transform_items = function(ctx, items)
        -- Remove the "Text" source from lsp autocomplete
        return vim.tbl_filter(function(item)
          return item.kind ~= vim.lsp.protocol.CompletionItemKind.Text
        end, items)
      end,
    }
  end,
}
