---@brief
---
--- https://robotcode.io
---
--- RobotCode - Language Server Protocol implementation for Robot Framework.

---@return string|nil
local function get_python_path()
  -- Search for the site-packages directory in the .venv folder.
  -- The folder structure differs between Windows and Unix,
  -- but this function handles both.
  local cwd = vim.uv.cwd()
  local project_site_packages = vim.fs.find("site-packages", {
    path = cwd .. "/.venv",
    type = "directory",
    limit = 1,
  })[1]

  local alt_project_site_packages = vim.fs.find("site-packages", {
    path = cwd .. "/venv",
    type = "directory",
    limit = 1,
  })[1]

  if not project_site_packages then
    project_site_packages = alt_project_site_packages
  end

  if not project_site_packages then
    -- If the site-packages were not found, RobotCode will still work,
    -- but import errors will appear for third party libraries.
    -- vim.notify("RobotCode: project virtual environment not found.")
    return nil
  end

  local pythonpath = project_site_packages
  if vim.env.PYTHONPATH then
    -- Preserve original PYTHONPATH if already set by some other plugin
    pythonpath = project_site_packages .. ":" .. vim.env.PYTHONPATH
  end
  return pythonpath
end

local python_path = get_python_path()

---@type vim.lsp.Config
return {
  cmd = { "robotcode", "language-server" },
  cmd_env = python_path and { PYTHONPATH = python_path } or nil,
  filetypes = { "robot", "resource" },
  root_markers = { "robot.toml", "pyproject.toml", "Pipfile", ".git" },
  get_language_id = function(_, _)
    return "robotframework"
  end,
}
