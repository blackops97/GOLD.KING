do
local function pre_process(msg)

    local fwd = 'mate:'..msg.to.id
    if msg.text == '[unsupported]' and redis:get(fwd) and not is_momod(msg) then
            delete_msg(msg.id, ok_cb, true)
end
    return msg
    end
    
 local function mohammed(msg, matches)
     chat_id = msg.to.id
local reply_id = msg['id']
     if is_momod(msg) and matches[1]== 's' and matches[2]== 'inline' then
         local fwd = 'mate:'..msg.to.id
         redis:set(fwd, true)
         local text = "🔺تم ✅ قفل الانلاين في المجموعة 〽️🔒\n🔸By : @"..(msg.from.username or "--")
         return reply_msg(reply_id, text, ok_cb, false)
         end
local reply_id = msg['id']
    if not is_momod(msg) and matches[1]== 's' and matches[2]== 'inline' then
    local text= 'للـمـشـرفـيـن فـقـط 👮🖕🏿'
 return reply_msg(reply_id, text, ok_cb, false)
end
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'n' and matches[2]== 'inline' then
    local fwd = 'mate:'..msg.to.id
    redis:del(fwd)
    local text = "🔺تم ✅ فتح الانلاين في المجموعة 〽️🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(reply_id, text, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'n' and matches[2]== 'inline' then
local text= ' للـمـشـرفـيـن فـقـط 👮🖕🏿'
 return reply_msg(reply_id, text, ok_cb, false)
 end

end
return {
    patterns ={
        '^[/!#](s)(inline)$',
        '^[/!#](n)(inline)$',
    },
run = mohammed,
pre_process = pre_process 
}
end