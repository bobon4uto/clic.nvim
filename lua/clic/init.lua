local PLUGIN_NAME = "clic"

local function insert(text)
  local buf = 0
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  col = col + 1
  vim.api.nvim_buf_set_text(buf, row - 1, col - 1, row - 1, col - 1, vim.split(text, "\n"))
end

vim.api.nvim_create_user_command("Lic", function(opts)
  local the_project = opts.fargs[1] or "___"
  insert( 
    'This file is a part of '.. the_project..'\n'..
    'Copyright (C) Vladimir Petrenko\n'..
    '\n'..
    'This program is free software: you can redistribute it and/or modify\n'..
    'it under the terms of the GNU General Public License as published by\n'..
    'the Free Software Foundation, either version 3 of the License, or\n'..
    '(at your option) any later version.\n'..
    '\n'..
    'This program is distributed in the hope that it will be useful, \n'..
    'but WITHOUT ANY WARRANTY; without even the implied warranty of\n'..
    'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n'..
    'GNU General Public License for more details.\n'..
    '\n'..
    'You should have received a copy of the GNU General Public License\n'..
    'along with this program.  If not, see <https://www.gnu.org/licenses/>.\n'..
    '\n'..
    '\n'..
    ''
)
end, { nargs='?', desc = 'Generate AGPLv3 License disclamer' })
