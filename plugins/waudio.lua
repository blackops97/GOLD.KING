do 

local function pre_process(msg) 
local monster = msg['id'] 
    local oscar = 'warn:'..msg.to.id 
    if redis:get(oscar) and msg.media and msg.media.type== "audio" and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
             send_large_msg(get_receiver(msg), "#تنبيه ممنوع 🔒 ارسال الصوتيات داخل المجموعة 👥🔒 \n\n #User : @"..msg.from.username) 
reply_msg(reply_id, omar, ok_cb, false)
        end 

        return msg 
    end 
local function run(msg, matches) 
local monster = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'w' and matches[2] == "audio" and is_momod(msg) then 
                    local oscar = 'warn:'..msg.to.id 
                    redis:set(oscar, true) 
                    local dd = 'تم ✅ تفعيل قفل الصوتيات مع التحذير 🔒'
reply_msg(monster, dd, ok_cb, true) 
elseif matches[1] == 'w' and matches[2] == 'audio' and not is_momod(msg) then 
local omar = 'للمشرفين فقط' 
reply_msg(reply_id, omar, ok_cb, false)

elseif matches[1] == 'n' and matches[2] == 'audio' and is_momod(msg) then 
      local oscar = 'warn:'..msg.to.id 
      redis:del(oscar) 
    local gg = 'تم ✅ الغاء تفعيل قفل الصوتيات مع التحذير 🔓 ' 
reply_msg(monster, gg, ok_cb, true) 
elseif matches[1] == 'n' and matches[2] == 'audio' and not is_momod(msg) then 
local omar = 'للمشرفين فقط 👿'
reply_msg(reply_id, omar, ok_cb, false)
end 
end 

return { 
    patterns = { 
        '^[!/#](w) (.*)$', 
       '^[!/#](n) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
} 
end 
