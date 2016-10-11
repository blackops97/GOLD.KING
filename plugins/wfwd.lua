
do
local function pre_process(msg)

    local fwd = 'REAL:'..msg.to.id
    if redis:get(fwd) and not is_momod(msg) and msg.fwd_from then
            delete_msg(msg.id, ok_cb, true)
             send_large_msg(get_receiver(msg), '#تنبيه ممنوع 🔒 عمل اعادة التوجيه داخل المجموعة 👥\n\n#User : @'..msg.from.username)
            return "ok"
end
        return msg
    end
    
 local function zeoone(msg, matches)
     chat_id = msg.to.id
local reply_id = msg['id']
     if is_momod(msg) and matches[1]== 'w' and matches[2]== 'fwd' then
         local fwd = 'REAL:'..msg.to.id
         redis:set(fwd, true)
         local text = "تم ✅ تفعيل قفل اعادة التوجيه مع التحذير🔷✔️"
         return reply_msg(reply_id, text, ok_cb, false)
         end
local reply_id = msg['id']
    if not is_momod(msg) and matches[1]== 'w' and matches[2]== 'fw' then
    local text = "للمشرفين فقط😎🖕🏿"
 return reply_msg(reply_id, text, ok_cb, false)
end
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'n' and matches[2]== 'fwd' then
    local fwd = 'REAL'..msg.to.id
    redis:del(fwd)
    local text = "تم ✅ الغاء تفعيل قفل اعادة التوجيه مع التحذير🔷✔️"
    return reply_msg(reply_id, text, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'n' and matches[2]== 'fwd' then
local text = "للمشرفين فقط😎🖕🏿"
 return reply_msg(reply_id, text, ok_cb, false)
 end

end
return {
    patterns ={
        '^/(w) (fwd)$',
        '^/(n) (fwd)$'
    },
run = zeoone,
pre_process = pre_process 
}
end