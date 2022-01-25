local M = {}

M.config = function()
  local status_ok, rust_tools = pcall(require, "rust-tools")
  if not status_ok then
    return
  end

  local extension_path = "/Users/pepeye/.vscode/extensions/vadimcn.vscode-lldb-1.6.10/"
  local codelldb_path = extension_path .. "adapter/codelldb"
  local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

  rust_tools.setup = {
    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(
            codelldb_path, liblldb_path)
    }
  }
end

return M
