vim.cmd(
	[[set langmap=fe,pr,gt,jy,lu,ui,yo,\\;p,rs,sd,tf,dg,nj,ek,il,o\\;,kn,FE,PR,GT,JY,LU,UI,YO,:P,RS,SD,TF,DG,NJ,EK,IL,O:,KN]]
)
-- trailing spaces appear as dashes (-)
-- to disable -> ":set unlist"
vim.cmd([[set list]])
-- non trailing spaces appear as dots
-- vim.cmd([[set lcs+=space:·]])

local opts = { noremap = true, silent = true }
--":" and ";" both trigger command mode from normal, visual and visual block mode
vim.keymap.set({ "n", "x", "v" }, ";", ":", opts)
vim.keymap.set({ "x", "v" }, "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set({ "x", "v" }, "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set({ "n", "x", "v" }, "<space>u", ":")
-- overwrites jump list next and previous jumps keybinds
vim.keymap.set("n", "<C-y>", ":bnext<CR>", opts)
vim.keymap.set("n", "<C-u>", ":bprevious<CR>", opts)
--matching default behaviour for ctrl+ that is not translated with langmap
vim.keymap.set({ "x", "v", "n", "i" }, "<C-f>", "<C-e>", opts)
vim.keymap.set({ "x", "v", "n", "i" }, "<C-j>", "<C-y>", opts)
vim.keymap.set({ "x", "v", "n", "i" }, "<C-t>", "<C-f>", opts)
vim.keymap.set({ "x", "v", "n", "i" }, "<C-s>", "<C-d>", opts)
vim.keymap.set({ "x", "v", "n", "i" }, "<C-l>", "<C-u>", opts)
vim.keymap.set({ "x", "v", "n", "i" }, "<C-p>", "<C-r>", opts)
vim.keymap.set({ "x", "v", "n", "i" }, "<C-r>", "<Esc>:w<CR>", opts)

lvim.keys.normal_mode["<M-p>"] = false --go to Previous reference
lvim.keys.normal_mode["<M-n>"] = false --go to Next reference
-- lvim.keys.normal_mode["<M-1>"] = "<C-1>"
-- lvim.keys.normal_mode["<M-2>"] = "<C-2>"
-- lvim.keys.normal_mode["<M-3>"] = "<C-3>"
lvim.keys.normal_mode["<M-k>"] = false --move line up
lvim.keys.normal_mode["<M-j>"] = false --move line down

lvim.keys.insert_mode["<M-e>"] = false
lvim.keys.insert_mode["<M-Right>"] = false
lvim.keys.insert_mode["<M-Left>"] = false
lvim.keys.insert_mode["<M-Down>"] = false
lvim.keys.insert_mode["<M-Up>"] = false
lvim.keys.insert_mode["<M-k>"] = false --move line up
lvim.keys.insert_mode["<M-j>"] = false --move line down

lvim.keys.visual_block_mode["<M-k>"] = false --move line up
lvim.keys.visual_block_mode["<M-j>"] = false --move line down
lvim.keys.visual_block_mode["<M-i>"] = false --textobj_select()
