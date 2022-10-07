local status_ok, base16 = pcall(require, "base16")
if not status_ok then
  return
end

base16.themes["amarena"] = {
  base00 = "1A2026"; base01 = "242D35"; base03 = "526170"; base02 = "3B4451";
  base04 = "caced6"; base05 = "e5f0f9"; base06 = "F4F5F2"; base07 = "7FE4D2";
  base08 = "FB6396"; base09 = "F692B2"; base0A = "F26190"; base0B = "94CF95";
  base0C = "6EC1D6"; base0D = "4CB9D6"; base0E = "CD84C8"; base0F = "58D6BF";
}

base16.themes["aquarium"] = {
  base00 = "20202A"; base01 = "2c2e3e"; base02 = "3D4059"; base03 = "313449";
  base04 = "63718b"; base05 = "ced4df"; base06 = "414560"; base07 = "63718b";
  base08 = "ebb9b9"; base09 = "e8cca7"; base0A = "e6dfb8"; base0B = "b1dba4";
  base0C = "b8dceb"; base0D = "a3b8ef"; base0E = "f6bbe7"; base0F = "eAc1c1";
}

base16.themes["catppuccin"] = {
  base00 = "1E1D2D"; base01 = "282737"; base02 = "2f2e3e"; base03 = "383747";
  base04 = "414050"; base05 = "bfc6d4"; base06 = "ccd3e1"; base07 = "D9E0EE";
  base08 = "F38BA8"; base09 = "F8BD96"; base0A = "FAE3B0"; base0B = "ABE9B3";
  base0C = "89DCEB"; base0D = "89B4FA"; base0E = "CBA6F7"; base0F = "F38BA8";
}

base16.themes["code"] = {
  base00 = "1E1E1E"; base01 = "262626"; base02 = "303030"; base03 = "3C3C3C";
  base04 = "464646"; base05 = "D4D4D4"; base06 = "E9E9E9"; base07 = "FFFFFF";
  base08 = "D16969"; base09 = "B5CEA8"; base0A = "D7BA7D"; base0B = "BD8D78";
  base0C = "9CDCFE"; base0D = "DCDCAA"; base0E = "C586C0"; base0F = "E9E9E9";
}

base16.themes["dark"] = {
	base00 = "181818"; base01 = "282828"; base02 = "383838"; base03 = "585858";
	base04 = "b8b8b8"; base05 = "d8d8d8"; base06 = "e8e8e8"; base07 = "f8f8f8";
	base08 = "ab4642"; base09 = "dc9656"; base0A = "f7ca88"; base0B = "a1b56c";
	base0C = "86c1b9"; base0D = "7cafc2"; base0E = "ba8baf"; base0F = "a16946";
}

base16.themes["decay"] = {
  base00 = "171B20"; base01 = "21262e"; base02 = "242931"; base03 = "485263";
  base04 = "485263"; base05 = "b6beca"; base06 = "dee1e6"; base07 = "dee1e6";
  base08 = "e05f65"; base09 = "e9a180"; base0A = "f1cf8a"; base0B = "78DBA9";
  base0C = "9cd1ff"; base0D = "74bee9"; base0E = "c68aee"; base0F = "e05f65";
}

base16.themes["everblush"] = {
  base00 = "181f21"; base01 = "22292b"; base02 = "363d3f"; base03 = "404749";
  base04 = "d0d0d0"; base05 = "dadada"; base06 = "181f21"; base07 = "bdc3c2";
  base08 = "e06e6e"; base09 = "e06e6e"; base0A = "d8b25b"; base0B = "8ccf7e";
  base0C = "ef7d7d"; base0D = "6da4cd"; base0E = "5db7cb"; base0F = "ef7d7d";
}

base16.themes["everforest"] = {
  base00 = "2b3339"; base01 = "323c41"; base02 = "3a4248"; base03 = "424a50";
  base04 = "4a5258"; base05 = "d3c6aa"; base06 = "ddd0b4"; base07 = "e7dabe";
  base08 = "7fbbb3"; base09 = "d699b6"; base0A = "83c092"; base0B = "dbbc7f";
  base0C = "e69875"; base0D = "a7c080"; base0E = "e67e80"; base0F = "e67e80";
}

base16.themes["grayscale"] = {
	base00 = "101010"; base01 = "252525"; base02 = "464646"; base03 = "525252";
	base04 = "ababab"; base05 = "b9b9b9"; base06 = "e3e3e3"; base07 = "f7f7f7";
	base08 = "7c7c7c"; base09 = "999999"; base0A = "a0a0a0"; base0B = "8e8e8e";
	base0C = "868686"; base0D = "686868"; base0E = "747474"; base0F = "5e5e5e";
}

base16.themes["gruvbox"] = {
	base00 = "282828"; base01 = "3c3836"; base02 = "504945"; base03 = "665c54";
	base04 = "bdae93"; base05 = "d5c4a1"; base06 = "ebdbb2"; base07 = "fbf1c7";
	base08 = "fb4934"; base09 = "fe8019"; base0A = "fabd2f"; base0B = "b8bb26";
	base0C = "8ec07c"; base0D = "83a598"; base0E = "d3869b"; base0F = "d65d0e";
}

base16.themes["gruvbox-material"] = {
  base00 = "292828"; base01 = "32302f"; base02 = "504945"; base03 = "665c54";
  base04 = "bdae93"; base05 = "ddc7a1"; base06 = "ebdbb2"; base07 = "fbf1c7";
  base08 = "ea6962"; base09 = "e78a4e"; base0A = "d8a657"; base0B = "a9b665";
  base0C = "89b482"; base0D = "7daea3"; base0E = "d3869b"; base0F = "bd6f3e";
}

base16.themes["monokai"] = {
	base00 = "272822"; base01 = "383830"; base02 = "49483e"; base03 = "75715e";
	base04 = "a59f85"; base05 = "f8f8f2"; base06 = "f5f4f1"; base07 = "f9f8f5";
	base08 = "f92672"; base09 = "fd971f"; base0A = "f4bf75"; base0B = "a6e22e";
	base0C = "a1efe4"; base0D = "66d9ef"; base0E = "ae81ff"; base0F = "cc6633";
}

base16.themes["mountain"] = {
  base00 = "0f0f0f"; base01 = "191919"; base02 = "262626"; base03 = "4c4c4c";
  base04 = "ac8a8c"; base05 = "f0f0f0"; base06 = "e7e7e7"; base07 = "f0f0f0";
  base08 = "ac8a8c"; base09 = "ceb188"; base0A = "aca98a"; base0B = "8aac8b";
  base0C = "8aabac"; base0D = "8f8aac"; base0E = "ac8aac"; base0F = "ac8a8c";
}

base16.themes["nord"] = {
	base00 = "2E3440"; base01 = "3B4252"; base02 = "434C5E"; base03 = "4C566A";
	base04 = "D8DEE9"; base05 = "E5E9F0"; base06 = "ECEFF4"; base07 = "8FBCBB";
	base08 = "88C0D0"; base09 = "81A1C1"; base0A = "5E81AC"; base0B = "BF616A";
	base0C = "D08770"; base0D = "EBCB8B"; base0E = "A3BE8C"; base0F = "B48EAD";
}

base16.themes["onedark"] = {
	base00 = "282c34"; base01 = "353b45"; base02 = "3e4451"; base03 = "545862";
	base04 = "565c64"; base05 = "abb2bf"; base06 = "b6bdca"; base07 = "c8ccd4";
	base08 = "e06c75"; base09 = "d19a66"; base0A = "e5c07b"; base0B = "98c379";
	base0C = "56b6c2"; base0D = "61afef"; base0E = "c678dd"; base0F = "be5046";
}

base16.themes["paradise"] = {
  base00 = "151515"; base01 = "1F1F1F"; base02 = "2E2E2E"; base03 = "424242";
  base04 = "BBB6B6"; base05 = "E8E3E3"; base06 = "E8E3E3"; base07 = "E8E3E3";
  base08 = "B66467"; base09 = "D9BC8C"; base0A = "D9BC8C"; base0B = "8C977D";
  base0C = "8AA6A2"; base0D = "8DA3B9"; base0E = "A988B0"; base0F = "BBB6B6";
}

base16.themes["rxyhn"] = {
  base00 = "061115"; base01 = "0C171B"; base02 = "101B1F"; base03 = "192428";
  base04 = "212C30"; base05 = "D9D7D6"; base06 = "E3E1E0"; base07 = "EDEBEA";
  base08 = "f26e74"; base09 = "ecd28b"; base0A = "E9967E"; base0B = "82c29c";
  base0C = "6791C9"; base0D = "79AAEB"; base0E = "C488EC"; base0F = "F16269";
}

base16.themes["tokyonight"] = {
  base00 = "1A1B26"; base01 = "3b4261"; base02 = "3b4261"; base03 = "545c7e";
  base04 = "565c64"; base05 = "a9b1d6"; base06 = "bbc5f0"; base07 = "c0caf5";
  base08 = "f7768e"; base09 = "ff9e64"; base0A = "e0af68"; base0B = "9ece6a";
  base0C = "2ac3de"; base0D = "7aa2f7"; base0E = "9d7cd8"; base0F = "9abdf5",
}

local groups = {
	"Normal",
	"NormalFloat",
	"NormalNC",
  "FloatBorder",
	"Comment",
	"Constant",
	"Special",
	"SpecialKey",
	"Identifier",
	"Statement",
	"PreProc",
	"Type",
	"Underlined",
	"Todo",
	"String",
	"Function",
	"Conditional",
	"Repeat",
	"Operator",
	"Structure",
	"LineNr",
	"NonText",
	"SignColumn",
	"CursorLineNr",
	"EndOfBuffer",
	"TelescopeSelection",
	"Folded",
  "Pmenu",
	"VertSplit"
}

vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  pattern = { "*" },
  command = [[lua Transparency()]],
})

function Transparency()
  for _,highlight in pairs(groups) do
    vim.cmd("hi! " .. highlight .. " guibg=NONE ctermbg=NONE")
  end
end

function SetBase16(theme)
  base16(base16.themes[theme], true)
  vim.cmd [[ doautocmd ColorScheme ]]
end

SetBase16('mountain')
