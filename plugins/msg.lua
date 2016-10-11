do

local function run(msg, matches)
local saeco = "1052831152"
 local chat = "channel#id"..saeco
     if ( msg.text ) then 
         if msg.to.type == "user" then 

  fwd_msg(chat, msg.id, ok_cb, true)

end
end
end

return {  
  patterns = {
       "(.*)$"
  },
  run = run,
}

end