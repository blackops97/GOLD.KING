local function saeco(msg,matches)
local ipex = "text"..msg.to.id
local gp = "GP LINK 🔗 : "
local info = (redis:get(ipex) or "قم بوضع رابط بالامر التالي \n /setlink + link")
if matches[1] == "setlink" then
redis:set(ipex , matches[2])
local fuck = "تم وضع الرابط للمجموعة ✅🌀\nالرابط : "..matches[2]
return fuck
end
if matches[1] == "link" then
return "📝 LINK GROUP : "..(redis:get(ipex) or ' *EROR!!\n\nقم بوضع الرابط عبر ارسال الامر /setlink').."\n"
end
if matches[1]== "dllink" then
    redis:del(ipex)
    return "done"
end
if matches[1]== "info" then
return "NAME 🉐 : "..msg.from.first_name.."\n"
.."USER ♎️ : @"..(msg.from.username or "NO ❌").."\n"
.."ID 🆔 : "..msg.from.id.."\n"
.."PHONE ☎️ : "..(msg.from.number or "NO ❌").."\n"
.."GP NAME 🌐 : "..msg.to.title.."\n"
.."GP ID 🆔 : "..msg.to.id.."\n"
..gp..""..info
end
end
return { 
patterns = { 
"^[!/#](link)$",
"^[!/#](setlink) (.+)$",
"^[!/#](info)$",
"^[!/#](dllink)$",
}, 
run = saeco, 
}