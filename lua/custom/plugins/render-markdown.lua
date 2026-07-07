-- render-markdown.nvim — render markdown inline in the buffer.
-- Draws real table borders, styled headers, and bullets while you still edit
-- the raw text. The line under your cursor un-renders so you can edit it.
--   Toggle anytime with  :RenderMarkdown toggle
-- Needs the `markdown` + `markdown_inline` treesitter parsers (already installed).
vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }
require('render-markdown').setup {}
