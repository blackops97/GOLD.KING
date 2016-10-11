do
local function run(msg, matches)

hashfun = 'bot:help:fun'..msg.from.id
hashmods = 'bot:help:mods'..msg.from.id
hashadmin = 'bot:help:admin'..msg.from.id
hashver = 'bot:ver'..msg.from.id
hash = 'bot:help'..msg.from.id


if matches[1] == 'sethelpfun' then
if not is_momod(msg) then return end
redis:set(hashfun,'waiting:'..msg.from.id)
return 'هاذا الامر ليس مخصص الك☑️ߔק'
else
if redis:get(hashfun) == 'waiting:'..msg.from.id then
redis:set(hashfun,msg.text)
return 'تم وضع الكليشه بنجاح☑️'
end
end

if matches[1] == 'setage' then

redis:set(hashmods,'waiting:'..msg.from.id)
return 'قم بارسال عمرك الان 💯'
else
if redis:get(hashmods) == 'waiting:'..msg.from.id then
redis:set(hashmods,msg.text)
return 'تم حفظ عمرك بنجاح ✅'
end
end


if matches[1] == 'setmyname' then

redis:set(hashadmin,'waiting:'..msg.from.id)
return 'قم بارسال اسمك الان ✅💠'
else
if redis:get(hashadmin) == 'waiting:'..msg.from.id then
redis:set(hashadmin,msg.text)
return 'تم وضع اسمك بنجاح ✅'
end
end

if matches[1] == 'setmyabout' then
redis:set(hash,'waiting:'..msg.from.id)
return 'فم بارسال معلوماتك لحفظها ✅'
else
if redis:get(hash) == 'waiting:'..msg.from.id then
redis:set(hash,msg.text)
return 'تم حفظ معلوماتك بنجاح ✅'
end
end

if matches[1] == 'setsex' then
    
redis:set(hashver,'waiting:'..msg.from.id)
return 'قم بارسال جنسك الان 🔅'
else
if redis:get(hashver) == 'waiting:'..msg.from.id then
redis:set(hashver,msg.text)
return 'تم وضع جنسك بنجاح ✅'
end
end


if matches[1] == 'helpfun' then
if not is_momod(msg) then return end
return redis:get(hashfun)
end

if matches[1] == 'help' then
if not is_momod(msg) then return end
return redis:get(hash)
end

if matches[1] == 'myinfo' then
return "🚶🏻Hi, "..msg.from.first_name.."\n"
.."\n".."📝 YOUR NAME :"..(redis:get(hashadmin) or 'NO NAME').."\n"
.." 💠 YOUR AGE : "..(redis:get(hashmods)  or 'NO AGE').."\n"
.."🔅 YOUR SEX : "..(redis:get(hashver)  or 'NO SEX').."\n"
.."🔱 YOUR ABOUT : "..(redis:get(hash)  or 'NO ABOUT').."\n\n"
.."CHANNEL @IQ_DEV3".."\n"

end

if matches[1] == 'helpadmin' then
if not is_momod(msg) then return end
return redis:get(hashadmin) 
end

if matches[1] == 'version' then
return redis:get(hashver)
end
if matches[1]== 'delinfo' then
    redis:del(hashfun, hashmods, hashadmin, hashver, hash)
    return 'تم حذف معلوماتك بنجاح ❎'
    end
end

return {
    patterns = {
 -- '^[/!#](sethelpfun)$',
        '^[/!#](setmyname)$',
        '^[/!#](setage)$',
       '^[/!#](setmyabout)$',
 --     '^[/!#](helpfun)$',
        '^[/!#](myinfo)$',
--   '^[/!#](helpadmin)$',
--     '^[/!#](help)$',
        '[/!#](setsex)$',
--      '[/!#](version)$',
'[/!#](delinfo)$',
        '(.*)',
    },
    run = run,
    pre_process = pre_process
}
end