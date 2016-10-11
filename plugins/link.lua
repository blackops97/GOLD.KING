antilink = {}-- An empty table for solving multiple kicking problem

do
local function run(msg, matches)
if is_momod(msg) then -- Ignore mods,owner,admins
return
end
local data = load_data(_config.moderation.data)
if data[tostring(msg.to.id)]['settings']['lock_link'] then
if data[tostring(msg.to.id)]['settings']['lock_link'] == 'yes' then
if antilink[msg.from.id] == true then
delete_msg(msg.id, ok_cb, true)
return
end
delete_msg(msg.id, ok_cb, true)
send_large_msg("channel#id"..msg.to.id, 'ممنوع 🔒 الاعلان عن المواقع -القنوات\n والبوتات 🔰 هنا التزم في القوانين ❗️\n\n  #User @'..msg.from.username..  ' !')
antilink[msg.from.id] = true
end
end
end
local function cron()
antichat = {} -- Clear antichat table
end
return {
patterns = {
"[Hh][Tt][Tt][Pp]",
"[Hh][Tt][Tt][Pp][Ss]",
"[Ww][Ww][Ww].",
},
run = run,
cron = cron
}
end
--post by channel @AXIS_BOTCENA