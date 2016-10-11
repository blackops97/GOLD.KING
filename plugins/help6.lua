do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help6' then 
    local ghost = [[
➖➖➖➖➖➖➖➖
🖲 /cbay ➠ حذف التوديع
🖲 /cwelc ➠ حذف ال ترحيب
🖲 /sbay ➠ اضافة توديع
🖲 /swelc ➠ اضاقة ترحيب
🖲/gwelc ➠ عرض الترحيب
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
  "^[!#/](help6)$", 
}, 
run = run 
} 
end