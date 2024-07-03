return{
{'folke/tokyonight.nvim',
name = "tokyonight",
priority = 1000,
opts = function() return {
	style = "moon" 
} end,
	config = function()
		vim.cmd("colorscheme tokyonight")
		end
},
	{'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
		vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})

		vim.keymap.set('n', '<leader>sn', function()
        		builtin.find_files { cwd = vim.fn.stdpath 'config' }
      			end, { desc = '[S]earch [N]eovim files' })
		end
	},
 {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
 config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
},
	{
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},
{
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
		config = function()
		require("mason").setup({
			ui = {
        			icons = {
            			package_installed = "✓",
           	 		package_pending = "➜",
            			package_uninstalled = "✗"
        			},
			},
		})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"cssls",
				"html",
				"tsserver",
				"tailwindcss",
				"biome",
			},
		})
		end,
},

}
