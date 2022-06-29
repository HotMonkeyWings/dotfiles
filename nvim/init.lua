require "user.options"                -- For user options (check :help :options for more details) 
require "user.keymaps"                -- For keymaps
require "user.plugins"                -- For plugins
require "user.colorscheme"            -- For colorscheme
require "user.cmp"                    -- For completions
require "user.lsp"                    -- For LSP
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.toggleterm"

vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
