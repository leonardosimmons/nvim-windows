local prettier = require("prettier")

prettier.setup({
    bin = 'prettier',
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "php",
        "rust",
        "scss",
        "toml",
        "typescript",
        "typescriptreact",
        "vue",
        "yaml",
    },  
    ["null-ls"] = {
        condition = function()
            return prettier.config_exists({
                check_package_json = true,
            })
        end,
        runtime_condition = function(params)
            return true
        end,
        timeout = 5000,
    },
    cli_options = {
        bracket_spacing = true,
        bracket_same_line = true,
        single_quote = true,
        tab_width = 4,
        trailing_comma = "es5",
    },
})
