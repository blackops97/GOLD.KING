--[[

 ▄▄▄████▄▄▄   NAME : MARDONA 
███▀▀██▀▀███  CREATED BY : @IMARDONA 
▀▀███▀▀███▀▀ 
 ▀█▄ ▀▀ ▄█ © جميع الحقوق محفوظة
]]
do
local function pre_process(msg) 
local r = get_receiver(msg) 
local MARDONA = 'mardona_mdia:'..msg.to.id
local mardona1 = 'mardona_photo:'..msg.to.id
local mardona2 = 'mardona_audio:'..msg.to.id
local mardona3 = 'mardona_video:'..msg.to.id
local mardona4 = 'mardona_sticker:'..msg.to.id
local mardona5 = 'mardona_file:'..msg.to.id
local mardona6 = 'mardona_gifs:'..msg.to.id
local mardona7 = 'mardona_fwd:'..msg.to.id
local mardona8 = 'mardona_reply:'..msg.to.id
local mardona9 = 'mardona_link:'..msg.to.id 
local mardona10 = 'mardona_emoji:'..msg.to.id 
local mardona11 = 'mardona_badword:'..msg.to.id 
local mardona12 = 'mardona_tag:'..msg.to.id 
local linkGroup = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]") 
local emojiGrouo = msg.text:match("😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃👫👪👬👭💏💑👯🙆🙅💁🙋💆💇💅👰🙎🙍🙇🎩👑👒👟👞👡👠👢👕👔👚👗🎽👖👘👙💼👜👝👛👓🎀🌂💄💛💙💜💚❤️💔💗💓💕💖💞💘💌💋💍💎👤👥💬👣💭🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩🐾💐🌸🌷🍀🌹🌻🌺🍁🍃🍂🌿🌾🍄🌵🌴🌲🌳🌰🌱🌼🌐🌞🌝🌚🌑🌒🌓🌔🌕🌖🌗🌘🌜🌛🌙🌍🌎🌏🌋🌌🌠⭐️☀️⛅️☁️⚡️☔️❄️⛄️🌀🌁🌈🌊🎍💝🎎🎒🎓🎏🎆🎇🎐🎑🎃👻🎅🎄🎁🎋🎉🎊🎈🎌🔮🎥📷📹📼💿📀💽💾💻📱☎️📞📟📠📡📺📻🔊🔉🔈🔇🔔🔕📢📣⏳⌛️⏰⌚️🔓🔒🔏🔐🔑🔎💡🔦🔆🔅🔌🔋🔍🛁🛀🚿🚽🔧🔩🔨🚪🚬💣🔫🔪💊💉💰💴💵💷💶💳💸📲📧📥📤✉️📩📨📯📫📪📬📭📮📦📝📄📃📑📊📈📉📜📋📅📆📇📁📂✂️📌📎✒️✏️📏📐📕📗📘📙📓📔📒📚📖🔖📛🔬🔭📰🎨🎬🎤🎧🎼🎵🎶🎹🎻🎺🎷🎸👾🎮🃏🎴🀄️🎲🎯🏈🏀⚽️⚾️🎾🎱🏉🎳⛳️🚵🚴🏁🏇🏆🎿🏂🏊🏄🎣☕️🍵🍶🍼🍺🍻🍸🍹🍷🍴🍕🍔🍟🍗🍖🍝🍛🍤🍱🍣🍥🍙🍘🍚🍜🍲🍢🍡🍳🍞🍩🍮🍦🍨🍧🎂🍰🍪🍫🍬🍭🍯🍎🍏🍊🍋🍒🍇🍉🍓🍑🍈🍌🍐🍍🍠🍆🍅🌽🏠🏡🏫🏢🏣🏥🏦🏪🏩🏨💒⛪️🏬🏤🌇🌆🏯🏰⛺️🏭🗼🗾🗻🌄🌅🌃🗽🌉🎠🎡⛲️🎢🚢⛵️🚤🚣⚓️🚀✈️💺🚁🚂🚊🚉🚞🚆🚄🚅🚈🚇🚝🚋🚃🚎🚌🚍🚙🚘🚗🚕🚖🚛🚚🚨🚓🚔🚒🚑🚐🚲🚡🚟🚠🚜💈🚏🎫🚦🚥⚠️🚧🔰⛽️🏮🎰♨️🗿🎪🎭📍🚩🇯🇵🇰🇷🇩🇪🇨🇳🇺🇸🇫🇷🇪🇸🇮🇹🇷🇺🇬🇧1⃣2⃣3⃣4⃣5⃣6⃣7⃣8⃣9⃣0⃣🔟🔢#⃣🔣⬆️⬇️⬅️➡️🔠🔡🔤↗️↖️↘️↙️↔️↕️🔄◀️▶️🔼🔽↩️↪️ℹ️⏪⏩⏫⏬⤵️⤴️🆗🔀🔁🔂🆕🆙🆒🆓🆖📶🎦🈁🈯️🈳🈵🈴🈲🉐🈹🈺🈶🈚️🚻🚹🚺🚼🚾🚰🚮🅿️♿️🚭🈷🈸🈂Ⓜ️🛂🛄🛅🛃🉑㊙️㊗️🆑🆘🆔🚫🔞📵🚯🚱🚳🚷🚸⛔️✳️❇️❎✅✴️💟🆚📳📴🅰🅱🆎🅾💠➿♻️♈️♉️♊️♋️♌️♍️♎️♏️♐️♑️♒️♓️⛎🔯🏧💹💲💱©®™❌‼️⁉️❗️❓❕❔⭕️🔝🔚🔙🔛🔜🔃🕛🕧🕐🕜🕑🕝🕒🕞🕓🕟🕔🕠🕕🕖🕗🕘🕙🕚🕡🕢🕣🕤🕥🕦✖️➕➖➗♠️♥️♣️♦️💮💯✔️☑️🔘🔗➰〰〽️🔱◼️◻️◾️◽️▪️▫️🔺🔲🔳⚫️⚪️🔴🔵🔻⬜️⬛️🔶🔷🔸🔹😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃👫👪👬👭💏💑👯🙆🙅💁🙋💆💇💅👰🙎🙍🙇🎩👑👒👟👞👡👠👢👕👔👚👗🎽👖👘👙💼👜👝👛👓🎀🌂💄💛💙💜💚❤️💔💗💓💕💖💞💘💌💋💍💎👤👥💬👣💭🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩🐾💐🌸🌷🍀🌹🌻🌺🍁🍃🍂🌿🌾🍄🌵🌴🌲🌳🌰🌱🌼🌐🌞🌝🌚🌑🌒🌓🌔🌕🌖🌗🌘🌜🌛🌙🌍🌎🌏🌋🌌🌠⭐️☀️⛅️☁️⚡️☔️❄️⛄️🌀🌁🌈🌊🎍💝🎎🎒🎓🎏🎆🎇🎐🎑🎃👻🎅🎄🎁🎋🎉🎊🎈🎌🔮🎥📷📹📼💿📀💽💾💻📱☎️📞📟📠📡📺📻🔊🔉🔈🔇🔔🔕📢📣⏳⌛️⏰⌚️🔓🔒🔏🔐🔑🔎💡🔦🔆🔅🔌🔋🔍🛁🛀🚿🚽🔧🔩🔨🚪🚬💣🔫🔪💊💉💰💴💵💷💶💳💸📲📧📥📤✉️📩📨📯📫📪📬📭📮📦📝📄📃📑📊📈📉📜📋📅📆📇📁📂✂️📌📎✒️✏️📏📐📕📗📘📙📓📔📒📚📖🔖📛🔬🔭📰🎨🎬🎤🎧🎼🎵🎶🎹🎻🎺🎷🎸👾🎮🃏🎴🀄️🎲🎯🏈🏀⚽️⚾️🎾🎱🏉🎳⛳️🚵🚴🏁🏇🏆🎿🏂🏊🏄🎣☕️🍵🍶🍼🍺🍻🍸🍹🍷🍴🍕🍔🍟🍗🍖🍝🍛🍤🍱🍣🍥🍙🍘🍚🍜🍲🍢🍡🍳🍞🍩🍮🍦🍨🍧🎂🍰🍪🍫🍬🍭🍯🍎🍏🍊🍋🍒🍇🍉🍓🍑🍈🍌🍐🍍🍠🍆🍅🌽🏠🏡🏫🏢🏣🏥🏦🏪🏩🏨💒⛪️🏬🏤🌇🌆🏯🏰⛺️🏭🗼🗾🗻🌄🌅🌃🗽🌉🎠🎡⛲️🎢🚢⛵️🚤🚣⚓️🚀✈️💺🚁🚂🚊🚉🚞🚆🚄🚅🚈🚇🚝🚋🚃🚎🚌🚍🚙🚘🚗🚕🚖🚛🚚🚨🚓🚔🚒🚑🚐🚲🚡🚟🚠🚜💈🚏🎫🚦🚥⚠️🚧🔰⛽️🏮🎰♨️🗿🎪🎭📍🚩🇯🇵🇰🇷🇩🇪🇨🇳🇺🇸🇫🇷🇪🇸🇮🇹🇷🇺🇬🇧1⃣2⃣3⃣4⃣5⃣6⃣7⃣8⃣9⃣0⃣🔟🔢#⃣🔣⬆️⬇️⬅️➡️🔠🔡🔤↗️↖️↘️↙️↔️↕️🔄◀️▶️🔼🔽↩️↪️ℹ️⏪⏩⏫⏬⤵️⤴️🆗🔀🔁🔂🆕🆙🆒🆓🆖📶🎦🈁🈯️🈳🈵🈴🈲🉐🈹🈺🈶🈚️🚻🚹🚺🚼🚾🚰🚮🅿️♿️🚭🈷🈸🈂Ⓜ️🛂🛄🛅🛃🉑㊙️㊗️🆑🆘🆔🚫🔞📵🚯🚱🚳🚷🚸⛔️✳️❇️❎✅✴️💟🆚📳📴🅰🅱🆎🅾💠➿♻️♈️♉️♊️♋️♌️♍️♎️♏️♐️♑️♒️♓️⛎🔯🏧💹💲💱©®™❌‼️⁉️❗️❓❕❔⭕️🔝🔚🔙🔛🔜🔃🕛🕧🕐🕜🕑🕝🕒🕞🕓🕟🕔🕠🕕🕖🕗🕘🕙🕚🕡🕢🕣🕤🕥🕦✖️➕➖➗♠️♥️♣️♦️💮💯✔️☑️🔘🔗➰〰〽️🔱◼️◻️◾️◽️▪️▫️🔺🔲🔳⚫️⚪️🔴🔵🔻⬜️⬛️🔶🔷🔸🔹😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃")
local badwordGroup = msg.text:match("كس") or msg.text:match("عير") or msg.text:match("كسكوس") or msg.text:match("زب") or msg.text:match("xnxx") or msg.text:match("sex") or msg.text:match("عير بيك") or msg.text:match("عير بصرمك") or msg.text:match("صرم") or msg.text:match("عير بخالتك") or msg.text:match("عير بعمتك") or msg.text:match("عير بيك") or msg.text:match("انيجك") or msg.text:match("اجب بحلك") or msg.text:match("جبه")or msg.text:match("كسه")or msg.text:match("كسعمتك")or msg.text:match("كسخالتك")or msg.text:match("كسمك")
local tagGroup = msg.text:match("@") or msg.text:match("#")

if redis:get(MARDONA) and not is_momod(msg) and msg.media then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona1) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona2) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona3) and not is_momod(msg) and msg.media and msg.media.type == 'video' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona4) and not is_momod(msg) and msg.media and msg.media.type == 'stickerw.eebp' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona5) and not is_momod(msg) and msg.media   and msg.media.type == 'document' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona6) and not is_momod(msg) and msg.media and msg.media.type== "mp4" then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona7) and not is_momod(msg) and msg.fwd_from then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona8) and msg.reply_id and not is_momod(mag) then
    delete_msg(msg.id, ok_cb, true)
elseif linkGroup and redis:get(mardona9) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
elseif emojiGrouo and redis:get(mardona10) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
elseif badwordGroup and redis:get(mardona11) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true)
elseif tagGroup and redis:get(mardona12) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
    return msg
end
return msg 
end
local function MARDONA(msg, matches) 
    local MARDONA = msg['id'] 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 's' and matches[2]== 'order' then
    local MARDONA = 'mardona_mdia:'..msg.to.id
local mardona1 = 'mardona_photo:'..msg.to.id
local mardona2 = 'mardona_audio:'..msg.to.id
local mardona3 = 'mardona_video:'..msg.to.id
local mardona4 = 'mardona_sticker:'..msg.to.id
local mardona5 = 'mardona_file:'..msg.to.id
local mardona6 = 'mardona_gifs:'..msg.to.id
local mardona7 = 'mardona_fwd:'..msg.to.id
local mardona8 = 'mardona_reply:'..msg.to.id
local mardona9 = 'mardona_link:'..msg.to.id 
local mardona10 = 'mardona_emoji:'..msg.to.id 
local mardona11 = 'mardona_badword:'..msg.to.id 
local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:set(MARDONA, true and "🔐") 
    redis:set(mardona1, true and "🔐") 
    redis:set(mardona2, true and "🔐") 
    redis:set(mardona3, true and "🔐") 
    redis:set(mardona4, true and "🔐") 
    redis:set(mardona5, true and "🔐") 
    redis:set(mardona6, true and "🔐") 
    redis:set(mardona7, true and "🔐") 
    redis:set(mardona8, true and "🔐") 
    redis:set(mardona9, true and "🔐") 
    redis:set(mardona10, true and "🔐") 
    redis:set(mardona11, true and "🔐") 
    redis:set(mardona12, true and "🔐") 
   local text = "🔺تم ✅ قفل جميع الاوامر في المجموعة ⚜🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
end
---------------------------
    if is_momod(msg) and matches[1] == 'n' and matches[2]== 'order' then
    local MARDONA = 'mardona_mdia:'..msg.to.id
local mardona1 = 'mardona_photo:'..msg.to.id
local mardona2 = 'mardona_audio:'..msg.to.id
local mardona3 = 'mardona_video:'..msg.to.id
local mardona4 = 'mardona_sticker:'..msg.to.id
local mardona5 = 'mardona_file:'..msg.to.id
local mardona6 = 'mardona_gifs:'..msg.to.id
local mardona7 = 'mardona_fwd:'..msg.to.id
local mardona8 = 'mardona_reply:'..msg.to.id
local mardona9 = 'mardona_link:'..msg.to.id 
local mardona10 = 'mardona_emoji:'..msg.to.id 
local mardona11 = 'mardona_badword:'..msg.to.id 
local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:del(MARDONA) 
    redis:del(mardona1) 
    redis:del(mardona2) 
    redis:del(mardona3) 
    redis:del(mardona4) 
    redis:del(mardona5) 
    redis:del(mardona6) 
    redis:del(mardona7) 
    redis:del(mardona8) 
    redis:del(mardona9) 
    redis:del(mardona10) 
    redis:del(mardona11) 
    redis:del(mardona12) 
   local text = "🔺تم ✅ فتح جميع الاوامر في المجموعة ⚜🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
end
---------------------------
    if is_momod(msg) and matches[1] == 's' and matches[2]== 'media' then
    local MARDONA = 'mardona_mdia:'..msg.to.id 
    redis:set(MARDONA, true and "🔐") 
    local text = "🔺تم ✅ قفل الميديا في المجموعة 🌇🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'media' then
    local MARDONA = 'mardona_mdia:'..msg.to.id 
    redis:del(MARDONA)
    local text = "🔺تم ✅ فتح الميديا في المجموعة 🌇🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'pht' then
    local mardona1 = 'mardona_photo:'..msg.to.id 
    redis:set(mardona1, true and "🔐") 
    local text = "🔺تم ✅ قفل الصور في المجموعة 🔭🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'pht' then
    local mardona1 = 'mardona_photo:'..msg.to.id 
    redis:del(mardona1) 
    local text = "🔺تم ✅ فتح الصور في المجموعة 🔭🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    
elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'ads' then
    local mardona9 = 'mardona_link:'..msg.to.id 
    redis:set(mardona9, true and "🔐") 
    local text = "🔺تم ✅ قفل الرابط في المجموعة 🔗 \n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'ads' then
    local mardona9 = 'mardona_link:'..msg.to.id 
    redis:del(mardona9) 
    local text = "🔺تم ✅ فتح الرابط في المجموعة 🔗🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'aud' then
    local mardona2 = 'mardona_audio:'..msg.to.id 
    redis:set(mardona2, true and "🔐") 
    local text = "🔺تم ✅ قفل الصوت في المجموعة 📡🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'aud' then
    local mardona2 = 'mardona_audio:'..msg.to.id 
    redis:del(mardona2) 
    local text = "🔺تم ✅ فتح الصوت في المجموعة 📡🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'emj' then
    local mardona2 = 'mardona_emoji:'..msg.to.id 
    redis:set(mardona10, true and "🔐") 
    local text = "تم ✅ قفل الايموجي 🔒😏"..'\n'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'emj' then
    local mardona2 = 'mardona_emoji:'..msg.to.id 
    redis:del(mardona10) 
    local text = "تم ✅ فتح الايموجي 🔓😏"..'\n'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'bwor' then
    local mardona11 = 'mardona_badword:'..msg.to.id 
    redis:set(mardona11, true and "🔐") 
    local text = "🔺تم ✅ قفل الكلمات السيئة في المجموعة 🔞🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'bwor' then
    local mardona11 = 'mardona_badword:'..msg.to.id 
    redis:del(mardona11) 
    local text = "🔺تم ✅ فتح الكلمات السيئة في المجموعة 🔞🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)    
    end
    --[[
    elseif is_momod(msg) and matches[1] == 'on' and matches[2]== 'tag' then
    local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:set(mardona12, true and "🔐") 
    local text = 'Tag has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'off' and matches[2]== 'tag' then
    local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:del(mardona12)
    local text = 'Tag has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)       
--]]
    if is_momod(msg) and matches[1] == 's' and matches[2]== 'video' then
    local mardona3 = 'mardona_video:'..msg.to.id 
    redis:set(mardona3, true and "🔐") 
    local text = "🔺تم ✅ قفل الفيديو في المجموعة 🎥🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'video' then
    local mardona3 = 'mardona_video:'..msg.to.id 
    redis:del(mardona3) 
    local text = "🔺تم ✅ فتح الفيديو في المجموعة 🎥🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'stk' then
    local mardona4 = 'mardona_sticker:'..msg.to.id 
    redis:set(mardona4, true and "🔐") 
    local text = "🔺تم ✅ قفل الملصقات في المجموعة 📱🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'stk' then
    local mardona4 = 'mardona_sticker:'..msg.to.id 
    redis:del(mardona4) 
    local text = "🔺تم ✅ فتح الملصقات في المجموعة 📱🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)

elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'dms' then
    local mardona5 = 'mardona_file:'..msg.to.id 
    redis:set(mardona5, true and "🔐") 
    local text = "🔺تم ✅ قفل الملفات في المجموعة 📁🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'dms' then
    local mardona5 = 'mardona_file:'..msg.to.id 
    redis:del(mardona5) 
    local text = "🔺تم ✅ فتح الملفات في المجموعة 📁🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 's' and matches[2]== 'fwd' then
    local mardona7 = 'mardona_fwd:'..msg.to.id 
    redis:set(mardona7, true and "🔐") 
    local text = "🔺تم ✅ قفل التوجيه في المجموعة 🔁🔒\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'n' and matches[2]== 'fwd' then
    local mardona7 = 'mardona_fwd:'..msg.to.id 
    redis:del(mardona7) 
    local text = "🔺تم ✅ فتح التوجيه في المجموعة 🔁🔓\n🔸By : @"..(msg.from.username or "--")
    return reply_msg(msg.id, text, ok_cb, false)
    end
    --[[
    elseif is_momod(msg) and matches[1] == 'on' and matches[2]== 'reply' then
    local mardona8 = 'mardona_reply:'..msg.to.id 
    redis:set(mardona8, true and "🔐") 
    local text = 'Reply has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'off' and matches[2]== 'reply' then
    local mardona8 = 'mardona_reply:'..msg.to.id 
    redis:del(mardona8) 
    local text = 'Reply has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)    

    elseif is_momod(msg) and matches[1] == 'on' and matches[2]== 'gif' then
    local mardona6 = 'mardona_gifs:'..msg.to.id 
    redis:set(mardona6, true and "🔐") 
    local text = "تم ✅ تفعيل منع الصور المتحركة 🔒🌌"..'\n'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'off' and matches[2]== 'gif' then
    local mardona6 = 'mardona_gifs:'..msg.to.id 
    redis:del(mardona6) 
    local text = "منع ❌ الصور المتحركة غير مفعل 🔓🌌"..'\n'
    return reply_msg(msg.id, text, ok_cb, false)
end--]]
    if matches[1] == "settings" and is_momod(msg) then
    local MARDONA = 'mardona_mdia:'..msg.to.id
    local mardona1 = 'mardona_photo:'..msg.to.id
    local mardona2 = 'mardona_audio:'..msg.to.id
    local mardona3 = 'mardona_video:'..msg.to.id
    local mardona4 = 'mardona_sticker:'..msg.to.id
    local mardona5 = 'mardona_file:'..msg.to.id
    local mardona6 = 'mardona_gifs:'..msg.to.id
    local mardona7 = 'mardona_fwd:'..msg.to.id
    local mardona8 = 'mardona_reply:'..msg.to.id
    local mardona9 = 'mardona_link:'..msg.to.id 
    local mardona10 = 'mardona_emoji:'..msg.to.id 
    local mardona11 = 'mardona_badword:'..msg.to.id 
    local mardona12 = 'mardona_tag:'..msg.to.id
    local tit = "Settings In SuperGroup : "
    local gp = msg.to.title
    local titi = '<b>'..tit..'</b>'
    local gpp = '<code>'..gp..'</code>'
    local settings_saeco = titi..""..gpp
.."\n\n➖➖➖➖➖➖➖\n"
.."🎁 Lock Media :: "..(redis:get(MARDONA) or "🔓").."\n"
.."🌌 Lock Photos :: "..(redis:get(mardona1) or "🔓").."\n"
..'🎤 Lock Voice :: '..(redis:get(mardona2) or "🔓").."\n"
.."🛣 Lock Sticker :: "..(redis:get(mardona4) or "🔓").."\n"
.."🎬 Lock Video :: "..(redis:get(mardona3) or "🔓").."\n"
.."📁 Lock Files :: "..(redis:get(mardona5) or "🔓").."\n"
..'🎆 Lock Gifs :: '..(redis:get(mardona6) or "🔓").."\n"
.."📎 Lock Links :: "..(redis:get(mardona9) or "🔓").."\n"
.."👙 Lock BadWords :: "..(redis:get(mardona11) or "🔓").."\n"
.."#⃣ Lock Tags :: "..(redis:get(mardona12) or "🔓")..'\n➖➖➖➖➖➖➖'
..'\n📅 '..os.date('!%A %B:%d:%Y\n', timestamp)
return settings_saeco
end
end

return { 
    patterns = { 
    '^[!/#](s)(media)$', 
    '^[!/#](n)(media)$', 
    '^[!/#](s)(pht)$', 
    '^[!/#](n)(pht)$', 
    '^[!/#](s)(aud)$', 
    '^[!/#](n)(aud)$', 
    '^[!/#](s)(video)$', 
    '^[!/#](n)(video)$', 
    '^[!/#](s)(stk)$', 
    '^[!/#](n)(stk)$', 
    '^[!/#](s)(dms)$', 
    '^[!/#](n)(dms)$',
 --   '^[!/#](on) (fwd)$', 
--    '^[!/#](off) (fwd)$',
--    '^[!/#](on) (gif)$', 
    '^[!/#](s)(ads)$', 
    '^[!/#](n)(ads)$',
   -- '^[!/#](on) (emj)$', 
    --'^[!/#](off) (emj)$',
   -- '^[!/#](on) (tag)$', 
  --'^[!/#](unlock) (tag)$',
    '^[!/#](s)(bwor)$', 
    '^[!/#](n)(bwor)$',
 --   '^[!/#](unlock) (gif)$',
 --   '^[!/#](on) (reply)$', 
  --  '^[!/#](unlock) (reply)$',
    '^[!/#](settings)$',
    '^[/!#](s)(order)$',
    '^[/!#](n)(order)$',
  '%[(document)%]',
  '%[(photo)%]',
  '%[(video)%]',
  '%[(audio)%]',
  '%[(contact)%]',
    },
    run = MARDONA, 
    pre_process = pre_process 
} 
end