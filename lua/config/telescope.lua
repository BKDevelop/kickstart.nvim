local M = {}
-- Smartly opens either git_files or find_files, depending on whether the working directory is
-- contained in a Git repo.
function M.find_project_files(opts)
  opts = opts or {}
  local ok = pcall(require('telescope.builtin').git_files, opts)

  if not ok then
    require('telescope.builtin').find_files()
  end
end

return M
