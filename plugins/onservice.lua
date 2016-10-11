function is_saeco(msg)
    id = load_data("vip.db")
    for k,v in pairs(id) do
    x = msg.from.id
    if tonumber(v) == x then
    return id
    end
    end
    end
-- end function 
local function saeco(msg,matches)
local r = get_receiver(msg)
if is_sudo(msg) and matches[1] == "promvip" then
      id = load_data("vip.db")
              table.insert(id,matches[2])
              save_data("vip.db",id)
              return "done set"
              
   end
   if matches[1] == "clean vip" and is_sudo(msg) then
   id = load_data("vip.db")
   id = {}
save_data("vip.db",id)
   return "done deleted !"
   end
   if matches[1] == "demotevip" then
id = load_data('vip.db')
for k,v in pairs(id) do
if v == matches[2] then
table.remove(id,k)
save_data("vip.db",id)
return "Delete Done !"
end
end
end
if matches[1] == "list vip" and is_saeco(msg) or is_sudo(msg) then
id = load_data("vip.db")
local list = "vip List is :".."\n"
for k,v in pairs(id) do
list = list..(k or "").." : "..(v or "").."\n"
end
send_large_msg(r, list)
end

if is_saeco(msg) and matches[1] == "me" then
    return "YOU VIP MEMBER IN REAL BOT"
end
end
return {
    patterns = {
        '[!/#](promvip) (.+)$',
        '[!/#](demotevip) (.+)$',
        '[!/#](clean vip)$',
        "[!/#](list vip)$",
         "[!/#](me)$",    
        },
    run = saeco,
    }
