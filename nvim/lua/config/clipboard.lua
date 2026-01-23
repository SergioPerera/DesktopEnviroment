-- Usa el portapapeles del sistema para operaciones de copiar
vim.opt.clipboard = "unnamedplus"

-- Evita que las operaciones de borrar usen el clipboard
local function delete_without_clipboard(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

-- Borrar sin tocar el clipboard
delete_without_clipboard("n", "d", '"_d')
delete_without_clipboard("n", "D", '"_D')
delete_without_clipboard("n", "x", '"_x')
delete_without_clipboard("n", "X", '"_X')
delete_without_clipboard("v", "d", '"_d')
delete_without_clipboard("v", "x", '"_x')
delete_without_clipboard("n", "c", '"_c')
delete_without_clipboard("v", "c", '"_c')
