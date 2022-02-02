local colorscheme = require('lush_theme.meteor-nvim-def')
local lushwright = require('shipwright.transform.lush')

run(colorscheme, lushwright.to_lua,
    {patchwrite, 'colors/meteor-nvim.lua', '-- PATCH_OPEN', '-- PATCH_CLOSE'})

