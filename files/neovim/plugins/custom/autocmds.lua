-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
return {
  {
    event = "FileType",
    pattern = "yaml",
    callback = function()
      if string.find(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "playbook") or
          string.find(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "inventory") or
          string.find(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "roles/") then
        vim.bo.filetype = "yaml.ansible"
      end
    end,
  },
}
