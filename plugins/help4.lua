do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help4' then 
    local ghost = [[
➖➖➖➖➖➖➖➖
🔷 /spht ➠ لمنع ارسال الصور في المجموعة 
🔷 /sads ➠ لمنع ارسال الاعلانات 
🔷 /sfwd ➠ لمنع اعادة توجيه 
🔷 /smember ➠ لقفل الاضافة 
🔷 /sspam ➠ لمنع من ارسال الرسائل الطويله 
🔷 /sflood ➠ لمنع التكرار 
🔷 /sgifs ➠ لمنع من ارسال الصور المتحركة 
🔷 /sstk  ➠ لمنع من ارسال الملصقات 
🔷 /scontacts  ➠ لمنع ارسال جهات الاتصال 
🔷 /srtl ➠ لمنع الاصافة الجماعية 
🔷 /saud ➠ لمنع من ارسال الصوتيات 
🔷 /svideo ➠ لمنع من ارسال الفيدويهات
🔷 /stext ➠ لقفل محادثة المجموعة
🔷 /stgs :➠ قفل اشعارات الدخول 
🔷 /smedia ➠ قفل الميديا 
🔷 /sorder ➠ قفل كل الاوامر 
🔷 /sinline ➠ قفل الانلاين 
➖➖➖➖➖➖➖➖
🔶 /nreply ➠ لفتح الرد في المجموعة 
🔶 /nads  ➠ الغاء قفل الاعلانات 
🔶 /nfwd ➠ الغاء منع اعادة توجيه 
🔶 /nmember ➠ الغاء قفل الاضافة 
🔶 /nspam ➠ الغاء قفل الرسائل الطويله
🔶 /nflood ➠ الغاء قفل التكرار 
🔶 /ngifs ➠  الغاء قفل منع الصور المتحركة 
🔶 /nstk ➠ الغاء قفل الملصقات 
🔶 /ncontacts ➠ الغاء قفل جهات الاتصال 
🔶 /nrtl ➠ الغاء قفل الاضافه الجماعية 
🔶 /naud ➠ الغاء قفل الرسائل الصورتيه
🔶 /npht ➠ الغاء قفل الصور 
🔶 /nvideo ➠ الغاء قفل الفيديوهات 
🔶 /ntext ➠ الغاء قفل المحادثة 
🔶 /ntgs ➠ الغاء قفل اشعارات الدخول 
🔶 /nmedia  ➠  الغاء قفل الميديا 
🔶 /norder  ➠  الغاء قفل كل الاوامر  
🔶 /ninline  ➠  الغاء قفل الانلاين  
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
  "^[!#/](help4)$", 
}, 
run = run 
} 
end