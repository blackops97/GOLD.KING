do
local function run(msg, matches)
    local nme = msg.to.title
    local r = get_receiver(msg) 
    local welc = 'oo:'..msg.to.id
    local bay = 'zz:'..msg.to.id
    local xxxx = redis:get(welc)
    local zzzz = redis:get(bay)
    if is_momod(msg) and matches[1]== 'swelc' then
        redis:set(welc, matches[2])
        local text = 'تم ✅ وضع الترحيب في : '.. '<b>'..nme..'</b>'..' 👥👋🏿'..'\n\n'..matches[2]
        return reply_msg(msg.id, text, ok_cb, false)
    elseif redis:get(welc) and   is_momod(msg) and  matches[1]== 'cwelc' then
        redis:del(welc)
        local text = 'تم ✅ حذف الترحيب في المجموعة 👥👋🏿'
        return reply_msg(msg.id, text, ok_cb, false)
         elseif not redis:get(welc) and is_momod(msg) and matches[1]== 'cwelc' then
        local text = 'الترحيب ✋🏿 محذوف سابقا 👥✔️'
        return reply_msg(msg.id, text, ok_cb, false)
    elseif redis:get(welc) and is_momod(msg) and matches[1]== 'gwelc' then
        send_large_msg('user#id'..msg.from.id, xxxx.."\n", ok_cb, false)
       local omar = "تم ✔ ارسال الترحيب الى الخاص"
        return  reply_msg(msg.id, omar, ok_cb, true)
    elseif not redis:get(welc) and is_momod(msg) and matches[1]== 'gwelc' then
        return 'قم بأضافة 🔶 ترحيب اولا 👥🔕 '
    end
    if is_momod(msg) and   matches[1]== 'sbay' then
        redis:set(bay, matches[2])
		local text = 'تم ✅ وضع التوديع في المجموعة 👥👋🏿'..'\n\n'..matches[2]
        return reply_msg(msg.id, text, ok_cb, false)
    elseif redis:get(bay) and is_momod(msg) and matches[1]== 'cbay' then
        redis:del(bay)
        local text = 'تم ✅ حذف التوديع في المجموعة 👥👋🏿'
        return reply_msg(msg.id, text, ok_cb, false)
         elseif not redis:get(bay) and is_momod(msg) and matches[1]== 'cbay' then
        local text = ' التوديع ✋🏿 محذوف سابقا 👥✔️'
        return reply_msg(msg.id, text, ok_cb, false)
    elseif redis:get(bay) and is_momod(msg) and matches[1]== 'gbay' then
                send_large_msg('user#id'..msg.from.id, zzzz.."\n", ok_cb, false)
       local omar = "تم ✔ ارسال التوديع الى الخاص"
       return  reply_msg(msg.id, omar, ok_cb, true)
         elseif not redis:get(bay) and is_momod(msg) and matches[1]== 'gbay' then
        return 'قم بأضافة 🔶 توديع اولا 👥🔕'
    end
    if redis:get(bay) and matches[1]== 'chat_del_user' then
         return  reply_msg(msg.id, zzzz, ok_cb, true)
     elseif redis:get(welc) and matches[1]== 'chat_add_user' then
        local xxxx = ""..redis:get(welc).."\n"
..' '..(msg.action.user.print_name or '')..'\n'
          reply_msg(msg.id, xxxx, ok_cb, true)
          elseif redis:get(welc) and matches[1]== 'chat_add_user_link' then
        local xxxx = ""..redis:get(welc).."\n"
..' '..(msg.from.print_name or '')..'\n'
          reply_msg(msg.id, xxxx, ok_cb, true)
    end
end
return { 
  patterns = { 
       "^[!/#](swelc) (.*)$", 
       "^[!/#](sbay) (.*)$", 
       "^[!/#](cwelc)$",
       "^[!/#](cbay)$",
       "^[!/#](gwelc)$",
       "^[!/#](gbay)$",
       "^!!tgservice (chat_add_user)$", 
       "^!!tgservice (chat_add_user_link)$",
       "^!!tgservice (chat_del_user)$"
  }, 
  run = run, 
} 

end