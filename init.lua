require("theprimagen")

vim.opt.completeopt = { "menuone", "noselect", "popup" }

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
    },
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    "vim",
                },
            },
        },
    },
})

vim.lsp.enable({
	"clangd",
	"ts_ls",
	"pyright",
	"lua_ls"
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

        if client:supports_method("textDocument/completion") then
            for i = 32, 126 do
                table.insert(
                    client.server_capabilities.completionProvider.triggerCharacters,
                    string.char(i)
                )
            end

            vim.lsp.completion.enable(true, client.id, args.buf, {
                autotrigger = true,
            })
        end
    end,
})

local function complete()
    return vim.fn.pumvisible() == 1
        and "<C-n>"
        or vim.lsp.completion.get()
end

vim.keymap.set("i", "<S-Tab>", complete, { expr = true })
vim.keymap.set("i", "<CR>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-y>"
    end
    return "<CR>"
end, { expr = true })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
