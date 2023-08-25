local lsp = require('lsp-zero')

lsp.ensure_installed({
	'clangd',
	'jdtls',

})

lsp.preset('recommended')
lsp.setup()
