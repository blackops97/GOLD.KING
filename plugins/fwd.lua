do
local function pre_process(msg)

    local fwd = 'mate:'..msg.to.id
    if redis:get(fwd) and not is_momod(msg) and msg.fwd_from then
            delete_msg(msg.id, ok_cb, true)
             return '#تنبيه ممنوع 🔒 عمل اعادة التوجيه داخل المجموعة 👥\n\n#User : @'..(msg.from.username or 'NO USERNAME')
end
        return msg
    end
    
 local function mohammed(msg, matches)
     chat_id = msg.to.id
local reply_id = msg['id']
     if is_momod(msg) and matches[1]== 's' and matches[2]== 'fwd' then
         local fwd = 'mate:'..msg.to.id
         redis:set(fwd, true)
         local text = "🔺تم ✅ قفل التوجيه في المجموعة 🔁🔒\n🔸By : @"..(msg.from.username or "--")
         return reply_msg(reply_id, text, ok_cb, false)
         end
local reply_id = msg['id']
    if not is_momod(msg) and matches[1]== 's' and matches[2]== 'fwd' then
    local text= 'للـمـشـرفـيـن فـقـط 👮🖕🏿'
 return reply_msg(reply_id, text, ok_cb, false)
end
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'n' and matches[2]== 'fwd' then
    local fwd = 'mate:'..msg.to.id
    redis:del(fwd)
    local text = "🔺تم ✅ فتح التوجيه في المجموعة 🔁🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(reply_id, text, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'n' and matches[2]== 'fwd' then
local text= ' للـمـشـرفـيـن فـقـط 👮🖕🏿'
 return reply_msg(reply_id, text, ok_cb, false)
 end

end
return {
    patterns ={
        '^[/!#](s)(fwd)$',
        '^[/!#](n)(fwd)$',
    },
run = mohammed,
pre_process = pre_process 
}
end