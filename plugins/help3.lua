do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help3' then 
    local ghost = [[
➖➖➖➖➖➖➖➖
🏌 /kick ➠ طرد عضو
🏌 /ban ➠  حظر عضو
🏌 /unban ➠ الغاء الحظر عن العضو 
🏌 /sban ➠ حظر عام للعضو
🏌 /unsban ➠ الغاء الحظر العام
🏌 /silent ➠ وضع العضو على صامت
🏌 /mutelist ➠ مشاهدة المكتومين
➖➖➖➖➖➖➖➖
🏮 /bl ➠ حضر كلمة
🏮 /op ➠ حذف كلمة 
🏮 /ldr ➠ اضهار قائمة الكلمات المحظورة
🏮 /cldr ➠ حذف الكلمات السيئة
🏮 /id ➠ لاضهار الايدي الخاص بك
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
  "^[!#/](help3)$", 
}, 
run = run 
} 
end