local integrator = peripheral.find("colonyIntegrator") -- Finds the peripheral if one is connected
local fc = peripheral.wrap("front")
local rc = peripheral.wrap("right")

if integrator == nil then error("colonyIntegrator not found") end

if not integrator.isInColony then error("Block is not in a colony") end

print("Colony name:".. integrator.getColonyName())
print("Currently under attack?".. integrator.isUnderAttack())
for k, v in ipairs(integrator.getCitizens()) do
  print(v.name) -- Prints the name of every colonist in the colony
end

for slot, item in pairs(rc.list()) do
  print(("%d x %s in slot %d"):format(item.count, item.name, slot))
end

