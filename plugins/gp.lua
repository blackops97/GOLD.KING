do

local function run(msg,matches)
local gold = "REAL BOT 🍃🤖"
local supp = "Group Support 🍃🤖"
local link = "https://telegram.me/joinchat/DfpJjT-gQkjKm8be_3vrCQ"
if is_sudo(msg) and matches[1] == "gp" then
return [[كروب دعم : ]]..'<a href="'..link..'">'..gold..'</a>'.."\n\n"..[[حمايه 0⃣0⃣1⃣ ]].."\n"..[[ملفات ممطروقه ⚜️✅
السيرفر مدفوع سنوي ميوكف 🐬❌
تم تجديد جميع ملفات البوت 🔶Ⓜ️
]].."➖➖➖➖➖➖➖➖\nاليريد اضيفله البوت هنا\n@GOLDREAL_1BOT"
end
if is_sudo(msg) and matches[1] == "gc" then
return [[كروب دعم : ]]..'<a href="'..link..'">'..gold..'</a>'.."\n\n"..[[حمايه 0⃣0⃣1⃣ ]].."\n"..[[ملفات ممطروقه ⚜️✅
السيرفر مدفوع سنوي ميوكف 🐬❌
تم تجديد جميع ملفات البوت 🔶Ⓜ️
]].."➖➖➖➖➖➖➖➖\n"..'<a href="'..link..'">'..supp..'</a>'
end
end
return {
patterns = {
"^[/!#](gp)$",
"^[/!#](gc)$"
},
run = run,
}
end