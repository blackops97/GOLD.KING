do
function run(msg, matches)
    local text = "( "..msg.to.title.." )🛢🔗"
       if not is_momod(msg) then
        local text = "للمدراء فقط ♦"
        return reply_msg(msg.id, text, ok_cb, false)
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
       local text = "قم بأنشاء رابط 🍁 اولا عن طريق الامر (relink ) ☂"
       return reply_msg(msg.id, text, ok_cb, false)
       end
         local text = '<a href="'..group_link..'">'..text..'</a>'
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           local text = "تم ارسال رابط المجموعة الى الخاص ✔"
           return reply_msg(msg.id, text, ok_cb, false) 
end

return {
  patterns = {
    "^[/#!]([Ll]inkpv)$"
  },
  run = run
}

end