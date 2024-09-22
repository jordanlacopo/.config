return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' } },

    config = function()
        require("telescope").setup({
            pickers = {
                find_files = {
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                },
            },
        })

        local builtin = require("telescope.builtin")
        --Lsp options
        vim.keymap.set("n", "<leader>sds", builtin.lsp_document_symbols, {})
        vim.keymap.set("n", "<leader>sws", builtin.lsp_workspace_symbols, {})
        -- File finder
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
        -- Git hub commands
        vim.keymap.set("n", "<leader>Gc", builtin.git_commits, {})
        vim.keymap.set("n", "<leader>Gb", builtin.git_branches, {})
    end,
}
