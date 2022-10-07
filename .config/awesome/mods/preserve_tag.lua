local screen = screen
awesome.connect_signal('exit', function(reason_restart)
  if not reason_restart then return end

  local file = io.open('/tmp/awesomewm-last-selected-tags', 'w+')

  for s in screen do
    file:write(s.selected_tag.index, '\n')
  end

  file:close()
end)

awesome.connect_signal('startup', function()
  local file = io.open('/tmp/awesomewm-last-selected-tags', 'r')
  if not file then return end

  local selected_tags = {}

  for line in file:lines() do
    table.insert(selected_tags, tonumber(line))
  end

  for s in screen do
    local i = selected_tags[s.index]
    local t = s.tags[i]
    t:view_only()
  end

  file:close()
end)
