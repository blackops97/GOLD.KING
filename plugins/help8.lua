do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'help8' then 
    local ghost = [[
 هنالك تصميم لغه الانكليزيه والعربيه
➖➖➖➖➖➖➖➖
/mk +النص : لتصميم 
مثال:👇

/mk medo 
➖➖➖➖➖➖➖➖
لتغير لون النص
/mk !#اللون>

مثال 👇
 
mk !#blue> BAKURY : و يكتب لك كلمة  ب لون الازرق
➖➖➖➖➖➖➖➖
اللوان الخط المتوفرة هي

!#blue> : لجعل لون الخط ازرق
!#red> : لجعل لون الخط احمر
!#green> : لجعل لون الخط اخظر
!#orange> : لجعل لون الخط برتقالي
!#black> : لجعل لون الخط اسود
!#pink> : لجعل لون الخط وردي
!#yellow> : لجعل لون الخط اصفر
➖➖➖➖➖➖➖➖
لتغير خلفية التصميم

/mk,اللون
#ملاحظة عند تغير لون الخلفة يرجة الانتباه ب وضع علامة {,} بين كلمة mk و بدون ترك فراغ

مثال 👇
/mk,red medo : سوف يقوم ب تصميم ب خلفية حمراء

➖➖➖➖➖➖➖➖
اللوان الخلفية المتاحة هي 👇

,red : لجعل لون الخلفية احمر 
,blue : ل جعل لون الخلفية ازرق
,white : لجعل لون الخلفية ابيض
,green : لجعل لون الخلفية اخظر
➖➖➖➖➖➖➖➖
#كما يمكنك دمج لون النص مع لون الخلفية لجعل التصميم احلا 😍

مثال 👇
/mk,red !#blue> النص

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
  "^[!#/](help8)$", 
}, 
run = run 
} 
end