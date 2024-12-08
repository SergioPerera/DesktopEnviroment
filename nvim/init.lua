-- -- bootstrap lazy.nvim, LazyVim and your plugins
-- require("config.lazy")
--
-- -- Aplicar el esquema de colores
-- vim.cmd("colorscheme tokyonight")
--
-- -- Usar la API de Vim para personalizar los colores de los números de línea
-- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#FFFF00" })  -- Amarillo para el número de la línea activa
-- vim.api.nvim_set_hl(0, 'LineNr', { fg = "#FFFF00" })       -- Amarillo para los números de las líneas relativas
-- vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = "#FFFF00" })  -- Amarillo para los números de las líneas arriba
-- vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = "#FFFF00" })  -- Amarillo para los números de las líneas abajo
-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
-- Cargar el archivo de configuración para los plugins de comentario
require('plugins.comment')

-- ############################################################################################################
-- ############                  GLOBAL CONFIG FOR TRANSPARENCY                                ################
-- ############################################################################################################

-- Aplicar el esquema de colores
vim.cmd("colorscheme tokyonight")

-- Usar la API de Vim para personalizar los colores de los números de línea
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#61cfc5" })  -- para el número de la línea activa
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = "#B0B0B0" })  -- para los números de las líneas arriba
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = "#B0B0B0" })  -- para los números de las líneas abajo

-- Hacer el fondo transparente
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })  -- Fondo transparente para el área normal
vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })  -- Fondo transparente para las ventanas no activas
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })  -- Fondo transparente para la columna de signos
vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })  -- Fondo transparente para la línea de estado
vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'none' })  -- Fondo transparente para la línea de estado no activa

-- Cambiar el color de los comentarios a gris claro
vim.api.nvim_set_hl(0, 'Comment', { fg = "#B0B0B0", italic = true })  -- Gris claro para comentarios

-- Resaltar la línea activa con un color de fondo específico
vim.api.nvim_set_hl(0, 'CursorLine', { bg = "#08524a" })  -- Fondo oscuro para la línea activa

-- Hacer que el número de la línea activa tenga el mismo color de fondo que la línea activa
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#61cfc5", bg = "#08524a", bold = true })  -- Amarillo y fondo oscuro para el número de la línea activa


-- ############################################################################################################
-- ############                  NEO TREE TRANSPARENCY                                         ################
-- ############################################################################################################

-- Hacer el fondo de NeoTree transparente
vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })  -- Fondo transparente para NeoTree
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })  -- Fondo transparente para NeoTree en ventanas no activas
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { bg = 'none' })  -- Fondo transparente para los íconos de directorios
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { bg = 'none' })  -- Fondo transparente para los nombres de los directorios
vim.api.nvim_set_hl(0, 'NeoTreeFileName', { bg = 'none' })  -- Fondo transparente para los nombres de archivo


-- Colores personalizados para NeoTree
-- El directorio raíz se vuelve rojo
vim.api.nvim_set_hl(0, 'NeoTreeRootName', { fg = "#FF0000", bold = true })  -- Rojo para el directorio raíz

-- Los demás directorios se ponen de color blanco nuclear
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = "#FFFFFF" })  -- Blanco nuclear para los directorios


