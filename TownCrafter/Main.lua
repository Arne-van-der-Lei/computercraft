local integrator = peripheral.find("colonyIntegrator") -- Finds the peripheral if one is connected
local fc = peripheral.wrap("front")
local rc = peripheral.wrap("right")
local modem = peripheral.wrap("front")
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

    CraftItem(item,amount)
end

function CraftItem(item,amount,right)
    right = right or false
    recepie = GetRecepieForItem(item)

    if recepie == nil then
        print("recipie for " .. item .. " does not exist")
        return
    end
    while amount > 0 do
        for i = 1, 3, 1 do
            for j = 1, #recepie.layout[i] do
                local c = recepie.layout[i]:sub(j,j)
                item = recepie.blocks[c]
                if item == nil then 
                else
                    print(item)
                    if GetItemFromChest(item,(i-1)*4+j,1) == false then
                        ClearInventory()
                        CraftItem(item,1,true)
                        return
                    end
                end
            end
        end
        turtle.craft()

        if right then
            turtle.turnRight()
        end

        turtle.drop()

        if right then
            turtle.turnLeft()
        end
        amount = amount - recepie.output
    end
end

function GetItemFromChest(itemName,toSlot,amount)
    for slot, item in pairs(rc.list()) do
        if item.name == itemName then
            if toSlot == -1 then
                amount = amount - rc.pushItems(peripheral.getName(fc),slot,amount)
                if amount <= 0 then
                    return true
                end
            else 
                rc.pushItems(modem.getNameLocal(),slot,amount,toSlot)
                return true
            end
        end
    end
    return false
end

function ClearInventory()
    turtle.turnRight()
    for i = 1,16 do
        turtle.select(i)
        turtle.drop()
    end
    turtle.select(1)
    turtle.turnLeft()
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
