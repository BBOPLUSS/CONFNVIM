

-- =========================================================
-- NEOVIM CONFIGURATION - WSL2
-- Gestor de plugins: lazy.nvim
-- =========================================================

-- ---------------------------------------------------------
-- 1. OPCIONES GENERALES
-- ---------------------------------------------------------

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- ---------------------------------------------------------
-- 2. NUMERACION Y CURSOR
-- ---------------------------------------------------------

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4

vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

-- ---------------------------------------------------------
-- 3. SANGRIA Y TABULACIONES
-- ---------------------------------------------------------

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- ---------------------------------------------------------
-- 4. INTERFAZ
-- ---------------------------------------------------------

vim.opt.showmode = true
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.showcmd = true
vim.opt.cmdheight = 1

vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.splitright = true
vim.opt.splitbelow = true

-- ---------------------------------------------------------
-- 5. BUSQUEDA
-- ---------------------------------------------------------

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- ---------------------------------------------------------
-- 6. CARACTERES INVISIBLES
-- ---------------------------------------------------------

vim.opt.list = true
vim.opt.listchars = {
    tab = "» ",
    trail = "·",
    extends = "›",
    precedes = "‹",
    nbsp = "␣",
}

-- ---------------------------------------------------------
-- 7. PORTAPAPELES DEL SISTEMA
-- ---------------------------------------------------------

vim.opt.clipboard = "unnamedplus"

-- ---------------------------------------------------------
-- 8. ATAJOS DE TECLADO
-- ---------------------------------------------------------

local map = vim.keymap.set

map("n", "<leader>w", "<cmd>write<CR>",
    { desc = "Guardar archivo" })

map("n", "<leader>q", "<cmd>quit<CR>",
    { desc = "Cerrar ventana" })

map("n", "<Esc>", "<cmd>nohlsearch<CR>",
    { desc = "Limpiar resaltado de busqueda" })

map("n", "<leader>e", "<cmd>Explore<CR>",
    { desc = "Explorador de archivos integrado" })

-- ---------------------------------------------------------
-- 9. INSTALAR Y CARGAR LAZY.NVIM
-- ---------------------------------------------------------

local lazypath =
    vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    vim.notify(
        "No se encuentra lazy.nvim: " .. lazypath,
        vim.log.levels.ERROR
    )
else
    vim.opt.rtp:prepend(lazypath)

    require("lazy").setup("plugins", {
        checker = {
            enabled = false,
        },
        change_detection = {
            enabled = true,
            notify = false,
        },
    })
end

