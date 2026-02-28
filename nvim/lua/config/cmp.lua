-- Autocomplete 
local cmp = require("cmp")
cmp.setup.filetype({"sql", "mysql", "plsql", "cs", "lua"},{
    sources = cmp.config.sources({
        { name = "vim-dadbod-completion" },
        { name = "nvim_lsp"},
    }, {
        { name = "buffer" },
    })
})
