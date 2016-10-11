do
local function pre_process(msg)
local real = msg['id']
local omar1 = 'Omar_real_o:'..msg.to.id
    if redis:get(omar1) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
        delete_msg(msg.id, ok_cb, true)
             send_large_msg(get_receiver(msg), 'ممنوع 🔒 ارسال الصور داخل المجموعة 👥🔰  \n\n #User : @'..msg.from.username)
            return "ok"
end
        return msg
    end -- made by @Omar_Real
    
 local function omar1(msg, matches)
     chat_id = msg.to.id
local reply_id = msg['id']
     if is_momod(msg) and matches[1]== 'w' and matches[2]== 'photo' then
         local omar1 = 'Omar_real_o:'..msg.to.id
         redis:set(omar1, true)
         local omar1 = "تم ✅ قفل الصور مع التحذير 🔒"
         return reply_msg(reply_id, omar1, ok_cb, false)
         end
local reply_id = msg['id']
    if not is_momod(msg) and matches[1]== 'w' and matches[2]== 'photo' then
    local omar = "للمشرفين فقط"
 return reply_msg(reply_id, omar, ok_cb, false)
end
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'n' and matches[2]== 'photo' then
    local omar1 = 'Omar_real_o:'..msg.to.id
    redis:del(omar1)
    local omar1 = "تم ✅ فتح الصور مع التحذير 🔓"
    return reply_msg(reply_id, omar1, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'n' and matches[2]== 'photo' then
local omar1 = "للمشرفين فقط"
 return reply_msg(reply_id, omar1, ok_cb, false)
 end
-- made by @Omar_Real
end
return {
    patterns ={
        '^/(n) (photo)$',
        '^/(w) (photo)$'
    },
run = omar1,
pre_process = pre_process 
}
end