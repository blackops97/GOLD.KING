local function saeco(msg,matches)
if matches[1] == "setnote" then
local saeco = "note"..msg.from.id
redis:set(saeco, matches[2])
local fuck = "🚶🏻Hi "..msg.from.first_name.."\n".."\n".."📝Your Note Has Been Saved ✅"
return reply_msg(msg.id, fuck, ok_cb, false)
end

if matches[1] == "delnote" then
local saeco = "note"..msg.from.id
redis:del(saeco)
local fuck2 = "🚶🏻Hi "..msg.from.first_name.."\n".."\n".."📝Your Note Has Been Removed  🗑"
return reply_msg(msg.id, fuck2, ok_cb, false)
end

if matches[1] == "note" then
local saeco = "note"..msg.from.id
local iraq = "🚶🏻Hi "..msg.from.first_name.."\n".."\n".."📝 Your Note is :".."\n".."\n"..redis:get(saeco).."\n".."\n".."⏳Time Created Note is "..os.date("%X", msg.date).."\n"
send_large_msg('user#id'..msg.from.id, iraq.."\n", ok_cb, false)
local omar = "تم ✔ ارسال الملاحضة خاص"
return reply_msg(msg.id, omar, ok_cb, false)
end
end
return {
    patterns = {
        "^[/#](setnote) (.*)$",
        "^[/#](delnote)$",
        "^[#/](note)$"
    },
    run = saeco
}