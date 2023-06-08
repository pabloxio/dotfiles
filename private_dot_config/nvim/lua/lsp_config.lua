-- vim: filetype=lua

require('mason').setup()

-- Add additional capabilities supported by nvim-cmp
capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
-- Available LSP Servers from nvim-lspconfig plugin
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
  'bashls',
  'cssls',
  'dockerls',
  'gopls',
  'html',
  'lua_ls',
  'pyright',
  'rust_analyzer',
  'solargraph',
  'sqlls',
  'tailwindcss',
  'terraformls',
  'tsserver',
}

require('mason-lspconfig').setup({
  ensure_installed = servers,
  automatic_installation = true,
})

local lspconfig = require('lspconfig')

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end

lspconfig.yamlls.setup {
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ['http://json.schemastore.org/github-workflow'] = '.github/workflows/*.{yml,yaml}',
        ['http://json.schemastore.org/github-action'] = '.github/action.{yml,yaml}',
        ['http://json.schemastore.org/circleciconfig'] = '.circleci/**/*.{yml,yaml}',
        ['https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.23.0-local/all.json'] = '/*.k8s.yaml',
        ['https://raw.githubusercontent.com/lalcebo/json-schema/master/serverless/reference.json'] = 'serverless.yaml',
        ['https://raw.githubusercontent.com/aws/serverless-application-model/main/samtranslator/schema/schema.json'] = 'template.yaml',

        -- -- Ansible
        -- ['https://raw.githubusercontent.com/ansible-community/schemas/main/f/ansible.json#/$defs/tasks'] = 'tasks/*.{yml,yaml}',
        -- ['https://raw.githubusercontent.com/ansible-community/schemas/main/f/ansible-vars.json'] = 'vars/*.{yml,yaml}',
        -- ['https://raw.githubusercontent.com/ansible-community/schemas/main/f/ansible.json#/$defs/playbook'] = 'playbook.{yml,yaml}',
      },
    },
  }
}

lspconfig.jsonls.setup {
  capabilities = capabilities,
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
}

lspconfig.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
})

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
}

-- Snippets
-- Loading snippets from 'rafamadriz/friendly-snippets'
require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip').filetype_extend('ruby', { 'rails' })

vim.cmd([[
set completeopt=menu,menuone,noselect
nmap <leader>li :LspInfo<CR>
nmap <leader>lm :Mason<CR>
]])
