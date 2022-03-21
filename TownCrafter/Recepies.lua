return {
    ["minecraft:cobblestone_stairs"] = {
        layout = {"c  ","cc ","ccc"},
        blocks = {
            ["c"]="minecraft:cobblestone"
        },
        output = 4
    },
    ["minecraft:oak_planks"] = {
        layout = {"w  ","   ","   "},
        blocks = {
            ["w"]="minecraft:oak_log"
        },
        output = 4
    },
    ["minecraft:oak_stairs"] = {
        layout = {"w  ","ww ","www"},
        blocks = {
            ["w"]="minecraft:oak_planks"
        },
        output = 4
    },
    ["minecraft:torch"] = {
        layout={"c  ","s  ","   "},
        blocks={
            ["c"] = "minecraft:coal",
            ["s"] = "minecraft:stick"
        },
        output = 4
    }
}