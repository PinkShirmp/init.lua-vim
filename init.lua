vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'rstacruz/vim-closer'
    use { "catppuccin/nvim", as = "catppuccin" }

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    vim.cmd.colorscheme "catppuccin"

    require("nvim-tree").setup()
    --require("mymodule").WelcomeMaster()
    vim.cmd.highlight({ "Error", "guibg=red" })
    vim.cmd.highlight({ "link", "Warning", "Error" })
    --[[
        setup vim mapping
    ]]
    vim.cmd("autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 -O2 -Wall % -o %:r && %:r.exe <CR>")
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    vim.keymap.set('n','<C-g>',":NvimTreeToggle<CR>",{noremap=true})
end)




