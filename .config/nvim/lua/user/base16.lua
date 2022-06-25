local status_ok, base16 = pcall(require, "base16")
if not status_ok then
  return
end

base16.themes["mountain"] = {
  base00 = "0f0f0f"; base01 = "191919"; base02 = "262626"; base03 = "4c4c4c";
  base04 = "ac8a8c"; base05 = "f0f0f0"; base06 = "e7e7e7"; base07 = "f0f0f0";
  base08 = "ac8a8c"; base09 = "ceb188"; base0A = "aca98a"; base0B = "8aac8b";
  base0C = "8aabac"; base0D = "8f8aac"; base0E = "ac8aac"; base0F = "ac8a8c";
}

base16.themes["paradise"] = {
  base00 = "151515"; base01 = "1F1F1F"; base02 = "2E2E2E"; base03 = "424242";
  base04 = "BBB6B6"; base05 = "E8E3E3"; base06 = "E8E3E3"; base07 = "E8E3E3";
  base08 = "B66467"; base09 = "D9BC8C"; base0A = "D9BC8C"; base0B = "8C977D";
  base0C = "8AA6A2"; base0D = "8DA3B9"; base0E = "A988B0"; base0F = "BBB6B6";
}

base16(base16.themes["paradise"], true)
-- base16(base16.themes["mountain"], true)
-- vim.cmd [[ colo gruvbox-material ]]
