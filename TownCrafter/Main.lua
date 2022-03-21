local integrator = peripheral.find("colonyIntegrator") -- Finds the peripheral if one is connected
local fc = peripheral.wrap("front")
local rc = peripheral.wrap("right")
local resepys = require("Recepies")

function PrintTable(table)
    for i,v in pairs(table) do
        if type(v) == "table" then
            print(i .. ":")
            PrintTable(v)
        else
            print(i.." = "..v)
        end
    end
end

function Craft(item, amount)
    print(item .. " - " .. amount)

    hasItem = GetItemFromChest(item,-1,amount)

    if hasItem then 
        return
    end

    recepie = GetRecepieForItem(item)

    if recepie == nil then
        print("recipie for " .. item .. " does not exist")
        return
    end
end

function GetItemFromChest(item,toSlot,amount)
    for slot, item in pairs(rc.list()) do
        if item.name == item then
            if toSlot == -1 then
                rc.pushItems(peripheral.getName(fc),slot,amount)
                return true
            else 
                return false
            end
        end
    end
    return false
end

function GetRecepieForItem(item)
    return resepys[item]
end


if integrator == nil then error("colonyIntegrator not found") end

if not integrator.isInColony then error("Block is not in a colony") end

for k, v in ipairs(integrator.getWorkOrders()) do
    print("Work order: " .. v.id)

    for index, item in ipairs(integrator.getWorkOrderResources(v.id)) do
        if item.needed - item.available > 0 then
            Craft(item.item,item.needed - item.available)
        end
    end
end