local function sudoteam(msg, matches)
local mtn = matches[2]
local link = matches[3]
local mtn1 = matches[4]
local link1 = matches[5]
local mtn2 = matches[6]
local link2 = matches[7]
if matches[1] == 'bd' then
  return '<b>'..mtn..'</b>'

elseif matches[1] == 'cd' then
  return '<code>'..mtn..'</code>'

elseif matches[1] == 'hp' then
  return '<a href="'..link..'">'..mtn..'</a>'
elseif matches[1] == 'it' then
  return '<i>'..mtn..'</i>'
  elseif matches[1] == 'lst' then
  return '<a href="'..link..'">'..mtn..'</a>'.."\n"..'<a href="'..link1..'">'..mtn1..'</a>'.."\n"..'<a href="'..link2..'">'..mtn2..'</a>'
end
end
return {
  description = "تست", 
  usage = "تست",
  patterns = {
    "^[!#/]([Cc]d) (.*)$",
    "^[!#/]([Ii]t) (.*)$",
    "^[!#/]([Bb]d) (.*)$",
    "^[!#/]([Hh]p) (.*) (.*)$",
    "^[!#/](lst) (.*) (.*) (.*) (.*) (.*) (.*)$"
  }, 
  run = sudoteam 
}