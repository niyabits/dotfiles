" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/yash/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/yash/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/yash/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/yash/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/yash/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  hop = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/hop"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jqx"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-jqx"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-miniyank"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-miniyank"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-bbye"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-bookmarks"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-graphql"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-prisma"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-prisma"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-styled-components"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-styled-components"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["vscode-es7-javascript-react-snippets"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vscode-es7-javascript-react-snippets"
  },
  ["vscode-go"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vscode-go"
  },
  ["vscode-javascript"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vscode-javascript"
  },
  ["vscode-rust"] = {
    loaded = true,
    path = "/home/yash/.local/share/nvim/site/pack/packer/start/vscode-rust"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
