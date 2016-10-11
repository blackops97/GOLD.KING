do

local function run(msg,matches)
if matches[1] == "image" then
local url = matches[2]
local file = download_to_file(url,'real.jpg')
send_photo(get_receiver(msg) , file, ok_cb, false)
end
end
return {
  patterns = {
     "^[/!#](image) (.*)$"
  },
  run = run
}

end