do

function run(msg, matches)
  return "هلو حبي شلونك صحتك اخبارك الولد 😂🍃, " .. matches[1]
end

return {
  description = "Says hello to someone", 
  usage = "say hello to [name]",
  patterns = {
    "^/hello to (.*)$",
    "^Say hello to (.*)$"
  }, 
  run = run 
}

end