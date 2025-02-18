-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Hyprlang LSP
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.hl", "hypr*.conf" },
  callback = function(_)
    vim.lsp.start({
      name = "hyprlang",
      cmd = { "hyprls" },
      root_dir = vim.fn.getcwd(),
    })
  end,
})

-- dotnet
local function find_closest_file(filename)
  local path = vim.fn.expand("%:p") -- Get full path of the current file
  local dir = vim.fn.fnamemodify(path, ":h") -- Get directory of the file
  local stop_point = vim.fn.expand("$HOME") .. "/repo" -- Get user's home directory

  while dir and dir ~= stop_point do
    local match = vim.fn.globpath(dir, filename, false, true)
    if #match > 0 then
      return match[1] -- Return the first match (closest)
    end
    dir = vim.fn.fnamemodify(dir, ":h") -- Move up one directory
  end
  return nil
end

local built_projects = {} -- Tracks builds in the session

local function build_dotnet_project()
  local sln_file = find_closest_file("*.sln")
  local csproj_file = find_closest_file("*.csproj")

  local target = sln_file or csproj_file

  if target and not built_projects[target] then
    local target_name = vim.fn.fnamemodify(target, ":t")
    local build_type = sln_file and "solution" or "project" -- Determine type
    vim.notify("🚀 Building .NET " .. build_type .. "\n   " .. target_name, vim.log.levels.INFO)

    vim.fn.jobstart("dotnet build " .. vim.fn.shellescape(target), {
      on_exit = function(_, code)
        if code == 0 then
          vim.notify("✅ .NET build successful:\n   " .. target_name, vim.log.levels.INFO)
          built_projects[target] = true -- Mark this project as built

          -- Wait for LSP to initialize before restarting
          vim.api.nvim_create_autocmd("LspAttach", {
            once = true, -- Only trigger once
            callback = function()
              vim.schedule(function()
                vim.cmd("LspRestart")
                vim.notify("🔄 LSP Restarted after Initialization!", vim.log.levels.INFO)
              end)
            end,
          })
        else
          vim.notify("❌ .NET build failed:\n   " .. target_name, vim.log.levels.ERROR)
        end
      end,
      stdout_buffered = true,
      stderr_buffered = true,
    })
  end
end

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "*.cs", "*.csproj", "*.sln" },
  callback = function()
    build_dotnet_project()
  end,
})
