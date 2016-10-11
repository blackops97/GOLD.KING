function is_start(msg)
startuser = load_data("start.db")
for k,v in pairs(startuser) do
if tonumber(v) == msg.from.id then
return startuser
end
end
end
function is_group(msg)
startgroup = load_data("start2.db")
for k,v in pairs(startgroup) do
if tonumber(v) == msg.from.id then
return startgroup
end
end
end

local function saeco(msg,matches)
local r = get_receiver(msg)
if matches[1] == "start" and msg.to.type == "user" and not is_start(msg) then
startuser = load_data("start.db")
table.insert(startuser,msg.from.id)
save_data("start.db",startuser)
end
if matches[1] == "users" then
startuser = load_data("start.db")
return "👮🏻 عدد المتابعين هو "..#startuser
end
if matches[1] == "users list" then
startuser = load_data("start.db")
local users_list = "🙂 عدد المتابعين هو "..#startuser.."\n 🤕 حول المتابعين".."\n"
for k,v in pairs(startuser) do
users_list = users_list.."📍"..k.." • "..v.."\n \n"
end
send_large_msg(r,users_list)
end
if matches[1] == "clean users" and is_sudo(msg) then
startuser = load_data("start.db")
startuser = {}
save_data("start.db",startuser)
return "done"
end
if matches[1] == "broadcast" and is_saeco(msg) then
startuser = load_data("start.db")
for k,v in pairs(startuser) do
user_id =  v
response = matches[2]
local user = 'user#id'..user_id
send_large_msg(user, response)
end
end
if matches[1] == "chat_add_user" and msg.action.user.id == our_id and not is_group(msg) then
startgroup = load_data("start2.db")
table.insert(startgroup,msg.to.id)
save_data("start2.db",startgroup)
return "I'M ADDED"
end
if matches[1] == "chats" and is_saeco(msg) then
startgroup = load_data("start2.db")
local vv = "👮🏻 #Groups num is : "..#startgroup.."\n \n 👮🏻#Groups  🆔 \n \n"
for k,v in pairs(startgroup) do
vv = vv.."📍"..k.." ➖ "..v.."\n \n"
end
send_large_msg(r,vv)
end
if matches[1] == "bc" and is_saeco(msg) then
startgroup = load_data("start2.db")
for k,v in pairs(startgroup) do
local chat_id = "channel#id"..v
local response = matches[2]
send_large_msg(chat_id, response)
end
end
if matches[1] == "result" then
startuser = load_data("start.db")
startgroup = load_data("start2.db")
return "👮🏻 #Groups num "..#startgroup.."\n 👮🏻#Start User "..#startuser.."\n"
end
if msg.text and not is_group(msg) then
startgroup = load_data("start2.db")
table.insert(startgroup,msg.to.id)
save_data("start2.db",startgroup)
end
end
return {
    patterns = {
        "^[!/#](start)$",
        "^[!/#](users)$",
        "^[!#/](chats)$",
        "^[!/#](users list)$",
        "^[!/#](clean users)$",
        "^[!/#](broadcast) (.+)$",
        "^[!/#](bc) (.+)$",
        "^[!/#](result)$",
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_del_user)$",
    },
    run = saeco,
}
