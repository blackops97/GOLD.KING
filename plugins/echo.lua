do
local function run(msg, matches)
if matches[1] == 'echo' then
return '<b>'..matches[2]..'</b>'
end
end
return {
  patterns = {
    "^[/!#](echo) (.+)$"
  }, 
  run = run 
}
end
