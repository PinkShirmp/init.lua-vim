return require('packer').startup(function()
    use "savq/melange-nvim"
    vim.opt.termguicolors = true
    vim.cmd.colorscheme 'melange'
end)