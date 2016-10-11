do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help5' then 
    local ghost = [[

➖➖➖➖➖➖➖➖

🎯 /w photo ➠ لقفل الصور
🎯 /n photo  ➠ لفتح الصور
🎯 /w audio ➠ لقفل الصوتيات
🎯 /n audio ➠ لفتح الصوتيات
🎯 /w video ➠ لقفل الفديوات
🎯 /n video ➠ لفتح الفديوات
🎯 /w link ➠ لقفل الروابط
🎯 /n link ➠ لفتح الروابط
🎯 /w fwd ➠ لقفل اعادة التوجيه
🎯 /n fwd ➠ لفتح اعادة التوجيه
🎯 /w media ➠ لقفل الميديا
🎯 /n media ➠ لفتح الميديا

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
  "^[!#/](help5)$", 
}, 
run = run 
} 
end