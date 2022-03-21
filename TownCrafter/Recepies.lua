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
    ["minecraft:spruce_planks"] = {
        layout = {"w  ","   ","   "},
        blocks = {
            ["w"]="minecraft:spruce_log"
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
    ["minecraft:spruce_stairs"] = {
        layout = {"w  ","ww ","www"},
        blocks = {
            ["w"]="minecraft:spruce_planks"
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
    },
    ["minecraft:spruce_trapdoor"] = {
        layout={"   ","ccc","ccc"},
        blocks={
            ["c"] = "minecraft:spruce_planks",
        },
        output = 2
    },
    ["minecraft:furnace"] = {
        layout={"ccc","c c","ccc"},
        blocks={
            ["c"] = "minecraft:cobblestone",
        },
        output = 1
    },
    ["minecraft:crafting_table"] = {
        layout = {"ww ","ww ","   "},
        blocks = {
            ["w"]="minecraft:spruce_planks"
        },
        output = 1
    },
    ["minecraft:campfire"] = {
        layout = {" s ","scs","lll"},
        blocks = {
            ["s"]="minecraft:stick",
            ["c"]="minecraft:coal",
            ["l"]="minecraft:spruce_log",
        },
        output = 1
    },
    ["minecraft:white_bed"] = {
        layout = {"   ","www","ppp"},
        blocks = {
            ["w"]="minecraft:white_wool",
            ["p"]="minecraft:spruce_planks"
        },
        output = 1
    },
    ["minecraft:chest"] = {
        layout = {"ppp","p p","ppp"},
        blocks = {
            ["p"]="minecraft:oak_planks"
        },
        output = 1
    },
    ["minecraft:cobblestone_wall"] = {
        layout = {"   ","ccc","ccc"},
        blocks = {
            ["c"]="minecraft:cobblestone"
        },
        output = 1
    },
    ["minecraft:glass_pane"] = {
        layout = {"   ","ppp","ppp"},
        blocks = {
            ["p"]="minecraft:glass"
        },
        output = 16
    },
}