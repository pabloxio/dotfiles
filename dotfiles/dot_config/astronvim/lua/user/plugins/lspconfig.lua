return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		-- automatic_installation = true,
		ensure_installed = {
			-- go
			-- "delve",
			-- "gofumpt",
			-- "goimports",
			-- "gomodifytags",
			"gopls",
			-- "iferr",
			-- "impl",
			-- Python
			-- "black",
			-- "pyright",
			-- "ruff-lsp",
			-- Ruby
			"solargraph",
			-- "erb-lint",
			-- "rubocop",
			-- Terraform
			-- "terraformls",
			-- "tflint",
			-- etc
			"ansiblels",
			"bashls",
			"cssls",
			"docker_compose_language_service",
			"dockerls",
			"gopls",
			"html",
			"jsonls",
			"lua_ls",
			"marksman",
			-- "nil_ls",
			"sqlls",
			"tailwindcss",
			"taplo", -- TOML
			"tsserver",
			"vuels",
			"yamlls",
		},
	},
}
