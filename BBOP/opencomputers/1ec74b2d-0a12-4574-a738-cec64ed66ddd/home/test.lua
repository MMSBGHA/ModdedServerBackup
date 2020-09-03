c = require("component")


for a, b in pairs(c.list()) do
  print("Entity:", b)
  for k, _ in pairs(c.methods(a)) do print("\tMethod:", k, "\n\t\tDoc: "..(c.doc(a, k) or "" )) end  
end