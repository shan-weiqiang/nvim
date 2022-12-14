
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- for clangd to correctly recognize header files, typically a compilation database is needed for clangd to read info,
-- such as 'compile_commands.json', which can be generated by:
-- cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1
require('lspconfig')['clangd'].setup {
	capabilities = capabilities
}


require('lspconfig')['pyright'].setup {
	capabilities = capabilities
}


require('lspconfig')['cmake'].setup {
	capabilities = capabilities
}

-- lua language server installation guide:
-- 1. first downloads the binary folder: https://github.com/sumneko/lua-language-server/releases
-- 2. create a bash script file named 'lua-language-server', with following content:
-- #!/bin/bash
-- script_dir=$(cd $(dirname $0);pwd)
-- exec "${script_dir}/bin/lua-language-server" "$@"
-- 3. add the script file as binary to PATH variable
require 'lspconfig'.sumneko_lua.setup {
	capabilities = capabilities
}

