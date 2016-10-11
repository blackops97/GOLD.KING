do

function run(msg, matches)
local mat = matches[2]
       if not is_momod(msg) then
        return "For owner only!"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "send to link"
       end
         return '<a href="'..group_link..'">'..mat..'</a>'
end

return {
  patterns = {
    "^[/#!]([Ll]ink) (.*)$"
  },
  run = run
}

end