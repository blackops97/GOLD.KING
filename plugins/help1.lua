do 

local function run(msg, matches) 

local reply_id = msg['id'] 
if is_momod(msg) and matches[1] == 'help1' then 
    local ghost = [[ 
➖➖➖➖➖➖➖➖
✒️/spromote ➠ تعيين مدير 
✒️/leader ➠ لعرض المدير
✒️/pro ➠ تعيين مشرف 
✒️/dem ➠ تنزيل مشرف
✒️/modlist ➠ لعرض المشرفين
✒️/setadmin ➠ تعيين اداري
✒️/demoteadmin ➠ تنزيل اداري
➖➖➖➖➖➖➖➖
🛢 /del about ➠ تنظيف الوصف
🛢 /del rules ➠ تنظيف القوانين
🛢 /del mods ➠ تنظيف المشرفين
🛢 /del slist ➠ تنظيف المكتومين
🛢 /del username ➠ حذف معرف المجموعة
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
  "^[!#/](help1)$", 
}, 
run = run 
} 
end