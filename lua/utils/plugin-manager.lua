local M = {}

M.plugin_dir = vim.fn.stdpath("data") .. "/plugins"

-- Simple function to ensure plugin is cloned and added to rtp
function M.ensure(spec)
  local plugin_path = M.plugin_dir .. "/" .. spec.name
  
  -- Clone if doesn't exist
  if vim.fn.isdirectory(plugin_path) == 0 then
    local cmd = string.format("git clone --depth=1 %s %s", spec.url, plugin_path)
    vim.fn.system(cmd)
  end
  
  -- Add to runtimepath
  vim.opt.rtp:prepend(plugin_path)
end

return M
