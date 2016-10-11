--[[
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀
▀▄ ▄▀                                      ▀▄ ▄▀
▀▄ ▄▀    BY @i_d_b                         ▀▄ ▄▀
▀▄ ▄▀     BY i_d_b    (@i_d_b)             ▀▄ ▄▀
▀▄ ▄▀ JUST WRITED BY i_d_b                 ▀▄ ▄▀
▀▄ ▄▀          media: الوسائط             ▀▄ ▄▀
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
 local function pre_process(msg) 
  local jalal = msg['id']
  local user = msg.from.id
  local chat = msg.to.id
  local hash = 'mate:'..chat..':'..user
  if msg.media and not is_momod(msg) then
    if redis:get(hash) and msg.media and not is_momod(msg) then 
      delete_msg(msg.id, ok_cb, false) 
      redis:del(hash) 
      kick_user(user, chat)
    else
      local q = ""
      reply_msg(jalal, q, ok_cb, true) 
      redis:set(hash, true)
    end
  end
  return  msg
end
       
       

local function run(msg, matches) 
  local jalal = msg['id'] 
  if matches[1] == 'on media' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:set(hash, true) 
      local x = 'تم ✅ قفل الوسائط 🔒⛰'
      reply_msg(jalal, x, ok_cb, true) 
    else 
      local asdy = 'سوالف بال كبار كبد عمري🌝☕️' 
      reply_msg(jalal, asdy, ok_cb, true) 
    end
  end
  if matches[1] == 'off media'  then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      local don = 'تم ✅ فتح الوسائط 🔓⛰'
      reply_msg(jalal, don, ok_cb, true) 
    else
      local jalal_aldon = 'سوالف بال كبار حبي🌝☕️' 
      reply_msg(jalal, jalal_aldon, ok_cb, true) 
    end 
  end 
end
return { 
    patterns = {
 "^[/!#](on media)$",
 "^[/!#](off media)$",
 
    }, 
     
run = run, 
    pre_process = pre_process 
}
-- by @i_d_b