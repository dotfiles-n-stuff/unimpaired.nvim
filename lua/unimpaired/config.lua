local M = {}

local defaults = {
    default_keymaps = true,
    keymaps = {
        exchange_above = {
            mapping = '[e',
            description = 'Exchange line with [count] lines above',
            dot_repeat = true,
        },
        exchange_below = {
            mapping = ']e',
            description = 'Exchange line with [count] lines below',
            dot_repeat = true,
        },
        exchange_section_above = {
            mapping = '[e',
            description = 'Move section [count] lines up',
            dot_repeat = true,
        },
        exchange_section_below = {
            mapping = ']e',
            description = 'Move section [count] lines down',
            dot_repeat = true,
        },
    },
}

M.init = function(user_conf)
    user_conf = user_conf or {}
    if user_conf.default_keymaps == false then
        defaults = {}
    end
    M.options = vim.tbl_deep_extend('force', defaults, user_conf)
end

return M
