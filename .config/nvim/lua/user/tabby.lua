local status_ok, tabby = pcall(require, "tabby")
if not status_ok then
  return
end

vim.opt.showtabline = 2
vim.cmd [[ autocmd FileType alpha set showtabline=0 | autocmd BufUnload <buffer> set showtabline=3 ]]

local util = require('tabby.util')
local hl_tabline = util.extract_nvim_hl('TabLine')
local hl_normal = util.extract_nvim_hl('Normal')
local hl_tabline_sel = util.extract_nvim_hl('TabLineSel')
local active_tab_hl = { fg = hl_normal.fg, bg = hl_normal.bg, style = 'bold' }
local inactive_tab_hl = { fg = hl_tabline.fg, bg = hl_tabline.bg }

local function fileIcon()
  return '  ' .. require ('nvim-web-devicons').get_icon(vim.fn.expand('%:t'), vim.fn.expand('%:e'), {default = true}) .. ' '
end

local components = function()
	local coms = {
		{
			type = 'text',
			text = {
				fileIcon,
				hl = { fg = hl_tabline_sel.fg, bg = hl_tabline_sel.bg, style = 'bold' },
			},
		},
		{
			type = 'text',
			text = {
				' ',
				hl = 'TabLineFill'
			}
		},
	}
	local tabs = vim.api.nvim_list_tabpages()
	local current_tab = vim.api.nvim_get_current_tabpage()
	for _, tabid in ipairs(tabs) do
		if tabid == current_tab then
			table.insert(coms, {
				type = 'tab',
				tabid = tabid,
				label = {
					'  ' .. vim.api.nvim_tabpage_get_number(tabid) .. '  ',
					hl = active_tab_hl
				},
			})
		end
		if tabid ~= current_tab then
			table.insert(coms, {
				type = 'tab',
				tabid = tabid,
				label = {
					'  ' .. vim.api.nvim_tabpage_get_number(tabid) .. '  ',
					hl = inactive_tab_hl
				},
			})
		end
	end
	table.insert(coms,
		{
			type = 'text',
			text = {
				' ',
				hl = 'TabLineFill'
			}
		}
	)
	table.insert(coms, { type = 'spring' } )
	local cur_bufid = vim.api.nvim_get_current_buf()
	for _, bufid in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_is_valid(bufid) and vim.bo[bufid].buflisted then
			local buf_name = require('nvim-web-devicons').get_icon(vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufid), ':t'), vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufid), ':e'), {default = true}) .. ' ' .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufid), ':t')
			-- local buf_name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufid), ':t')
			if bufid == cur_bufid then
				table.insert(coms, {
					type = 'text',
					text = {
						string.format(' %s ', buf_name) .. (vim.bo.modified and " " or ""),
						hl = active_tab_hl,
					}
				})
			end
			if bufid ~= cur_bufid then
				table.insert(coms, {
					type = 'text',
					text = {
						string.format(' %s ', buf_name),
						hl = inactive_tab_hl,
					}
				})
			end
			table.insert(coms,
				{
					type = 'text',
					text = {
						' ',
						hl = 'TabLineFill'
					}
				}
			)
		end
	end
	return coms
end

tabby.setup{
	components = components,
}
