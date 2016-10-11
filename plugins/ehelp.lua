do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help' then 
    local ghost = [[
   🔱 #GOLDKING 🔱
➖➖➖➖➖➖➖➖➖
⚜/help1 ➠ عرض اوامر الترقية +تْنَظٌيَفَ
⚜/help2 ➠ عرض اوامر العامة
⚜/help3 ➠ عرض اوامر الطرد
⚜/help4 ➠ لُْعرَضُ اوَمٌرَ الُقًفَلُ وَالُفَتْحُ
⚜/help5 ➠ عرض اوامر الميديا
⚜/help6 ➠ عرض اوامر الترحيب
⚜/help7 ➠  لعرض اوامر الماركداون
⚜/help8 ➠  لعرض اوامر التصميم
➖➖➖➖➖➖➖➖➖
⛔ Group Name : goldmalek
📅 Tuesday October:11:2016
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
  "^[!#/](help)$", 
}, 
run = run 
} 
end