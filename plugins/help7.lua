do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help7' then 
    local ghost = [[
➖➖➖➖➖➖➖➖
💙 /bd + لجعل النص ضخم : النص
💙 /cd + لجعل النص ازرق : النص
💙 /it + لجعل النص مائل : النص
💙 /hp + text + link : لجعل النص رابط 
➖➖➖➖➖➖➖➖
]]..'⛔ Group Name : '..msg.to.title..'\n'..'📅 '..os.date('!%A %B:%d:%Y\n', timestamp)
  reply_msg(reply_id, ghost, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) then 
local ghost = "Only Owner or Mod !" 
reply_msg(reply_id, ghost, ok_cb, false) 
end 

end 
return { 
patterns ={ 
  "^[!#/](help7)$", 
}, 
run = run 
} 
end