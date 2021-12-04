return require(
    "packer"
).startup(
    function()
<<<<<<< HEAD
        use "rbong/vim-flog"

        use {
            "kyazdani42/nvim-tree.lua",
            requires = {
                "kyazdani42/nvim-web-devicons" 
            },
            config = function()
                require "nvim-tree".setup {}
            end
        }
         use {
            "neovim/nvim-lspconfig" }
         use { 'Mofiqul/dracula.nvim' } 
=======
        use {
            "neovim/nvim-lspconfig"
        }
>>>>>>> parent of 9f58cf2 (add some tree)
        use {
            "hrsh7th/cmp-nvim-lsp"
        }
        use {
            "hrsh7th/cmp-buffer"
        }
        use {
            "hrsh7th/cmp-path"
        }
        use {
            "hrsh7th/cmp-cmdline"
        }
        use {
            "hrsh7th/nvim-cmp"
        }
<<<<<<< HEAD
 use 'hrsh7th/cmp-vsnip'
 use 'hrsh7th/vim-vsnip'
=======
        --use {
>>>>>>> parent of 9f58cf2 (add some tree)
        use {
            "nvim-lua/plenary.nvim"
        }
        use {
            "ThePrimeagen/harpoon"
        }
        use {
            "nvim-telescope/telescope-project.nvim"
        }
        use {
            "wbthomason/packer.nvim",
            opt = true
        }
        use {
            "folke/which-key.nvim",
            config = function()
                require(
                    "which-key"
                ).setup {
                    triggers_blacklist = {}

                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        }
        use {
            "terrortylor/nvim-comment"
        }
        use {
            "lukas-reineke/format.nvim"
        }
        -- Color scheme

        use {
            "sainnhe/gruvbox-material"
        }

        -- Fuzzy finder

        use {
            "nvim-telescope/telescope.nvim",
            requires = {
                {
                    "nvim-lua/popup.nvim"
                },
                {
                    "nvim-lua/plenary.nvim"
                }
            }
        }

        -- LSP and completion

        use {
            "nvim-lua/completion-nvim"
        }

        -- Lua development

        use {
            "tjdevries/nlua.nvim"
        }

        -- Vim dispatch

        use {
            "tpope/vim-dispatch"
        }

        -- Fugitive for Git

        use {
            "tpope/vim-fugitive"
        }
    end
)
