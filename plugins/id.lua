do

function omar(msg, matches)
local idd = "ID 🆔 :"
local gidd = "GP ID 🌐 :"
local id = msg.from.id
local gid = msg.to.id
return '<code>'..idd..'</code>'.." "..'<b>'..id..'</b>'.."\n"..'<code>'..gidd..'</code>'.." "..'<b>'..gid..'</b>'
end
return {
patterns = {
"^[!/#](id)$"

},
run = omar
}

end