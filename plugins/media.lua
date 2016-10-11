do 

local function pre_process(msg) 
local mohammed = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local moody = 'mate:'..msg.to.id 
    if redis:get(moody) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = " "
reply_msg(mohammed, test, ok_cb, true) 

end 

        return msg 
    end 

local function MOHAMMED(msg, matches) 
local mohammed = msg['id'] 

    if matches[1] == 'on media'  and is_momod(msg) then 
                    local th3boss= 'mate:'..msg.to.id 
                    redis:set(th3boss, true) 
local boss = '☑️ تم قفل 🔒 جميع الوسائط 🔕 \n🔺Order By : @'..msg.from.username..'\n🔻Order By : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'on media' and not is_momod(msg) then 
local moody = 'للـمـشـرفـيـن فـقـط 👮🖕🏿'
reply_msg(mohammed, moody, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'off media' then
      local th3boss= 'mate:'..msg.to.id
      redis:del(th3boss)
local boss = '☑️ تم فتح جميع الوسائط 🔓🔔 \n🔺Order By : @'..msg.from.username..'\n🔻Order By : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'off media' and not is_momod(msg) then 
local moody= 'للـمـشـرفـيـن فـقـط 👮🖕🏿'
reply_msg(mohammed, moody, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^[/!#](on media)", 
    "^[/!#](off media)", 
  },
run = MOHAMMED, 
    pre_process = pre_process 
} 

end