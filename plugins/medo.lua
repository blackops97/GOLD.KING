do
    
    local function run(msg,maches)
    local lnk = "https://telegram.me/joinchat/DfpJjT7A7bDcbmlHZ0JMcw"
    local txt = "hello"
    if maches[1] == "txt" then
    return "medopdpsmpds"..'<a href="'..lnk..'">'..txt..'</a>'
end
end
return {
    patterns = {
        "^[/!#](txt)$",
    },
run = run
}
end