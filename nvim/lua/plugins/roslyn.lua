return {
    "seblyng/roslyn.nvim",
    ft = { "cs", "csharp" },
    opts = {
        config = {
            root_dir = function(fname)
                local util = require("lspconfig.util")

                -- Prefer closest solution/project
                return util.root_pattern("*.sln")(fname)
                    or util.root_pattern("*.csproj")(fname)
                    or util.find_git_ancestor(fname)
            end,

            settings = {
                ["csharp|inlay_hints"] = {
                    csharp_enable_inlay_hints_for_literal_parameters = false,
                    csharp_enable_inlay_hints_for_object_creation_parameters = false,
                    csharp_enable_inlay_hints_for_parameters = false,
                    dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
                    dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
                    dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
                },
            },
        },

        choose_target = function(targets)
            -- Prefer .sln over .csproj
            for _, target in ipairs(targets) do
                if target:match("%.sln$") then
                    return target
                end
            end

            -- fallback
            return targets[1]
        end,
    },
}
