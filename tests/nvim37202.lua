local result = vim.mpack.decode(vim.mpack.encode(-129))

if result == 127 then
  error("failed")
end
