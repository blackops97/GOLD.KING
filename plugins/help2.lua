do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help2' then 
    local ghost = [[
➖➖➖➖➖➖➖➖
🎭 /hello to + لأرسال هلو ➠ المعرف
🎭 /image + تحميل صورة ➠ الرابط
🎭 /calc + 1 [+,-,*] 1➠: معلومات رياضيات
🎭 /time + اضهار الوقت ➠ الدوله
🎭 /msgs ➠ اضهاء عدد رسائلك
🎭 /active ➠ اضهار المتفاعلين في المجموعة 
🎭 /vote [1-9] ➠ تصويت للبوت
🎭 /id ➠ لاضهار ايديك 
🎭 /info ➠ لاضهار معلوماتك
🎭 /rules ➠ لأظهار القوانين 
🎭 /about ➠ لأظهار الوصف 
🎭 /setabout ➠ لوضع وصف
🎭 /setrules ➠ لوضع قوانين
🎭 /setphoto ➠ وضع صورة
🎭 /setname ➠ وضع اسم
🎭 /setflood ➠ تتعيين التكرار
🎭 /linkpv ➠ الرابط اخاص
🎭 /getlink ➠ لاظهار الرابط
🎭 /relink ➠ تغيير الرابط
🎭 /setilnk ➠ وضع رابط يدوي
🎭 /tagall ➠ لعمل اشارة لجميع اعضاء المجموعة
🎭 /tr لترجمة اي كلمة عربية الى انكليزية + النص
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
  "^[!#/](help2)$", 
}, 
run = run 
} 
end