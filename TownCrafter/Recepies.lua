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
        output = 6
    },
    ["minecraft:glass_pane"] = {
        layout = {"   ","ppp","ppp"},
        blocks = {
            ["p"]="minecraft:glass"
        },
        output = 16
    },
    ["structurize:plain_spruce_cobblestone_timber_frame"] = {
        layout = {" p "," c "," s "},
        blocks = {
            ["p"]="minecraft:spruce_planks",
            ["c"]="minecraft:cobblestone",
            ["s"]="structurize:sceptergold"
        },
        output = 4
    },
    ["structurize:double_crossed_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:plain_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:framed_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:double_crossed_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:side_framed_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:framed_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:up_gated_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:side_framed_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:down_gated_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:up_gated_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:one_crossed_lr_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:down_gated_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:one_crossed_rl_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:one_crossed_lr_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:horizontal_plain_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:one_crossed_rl_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["structurize:side_framed_horizontal_spruce_cobblestone_timber_frame"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="structurize:horizontal_plain_spruce_cobblestone_timber_frame"
        },
        output = 1
    },
    ["minecraft:birch_fence_gate"] = {
        layout = {"   ","sps","sps"},
        blocks = {
            ["p"]="minecraft:birch_planks",
            ["s"]="minecraft:stick"
        },
        output = 1
    },
    ["minecraft:birch_planks"] = {
        layout = {"l  ","   ","   "},
        blocks = {
            ["l"]="minecraft:birch_log"
        },
        output = 4
    },
    ["minecraft:oak_trapdoor"] = {
        layout = {"   ","ppp","ppp"},
        blocks = {
            ["p"]="minecraft:oak_planks"
        },
        output = 2
    },
    ["minecraft:oak_slab"] = {
        layout = {"   ","   ","ppp"},
        blocks = {
            ["p"]="minecraft:oak_planks"
        },
        output = 6
    },
    ["minecraft:birch_slab"] = {
        layout = {"   ","   ","ppp"},
        blocks = {
            ["p"]="minecraft:birch_planks"
        },
        output = 6
    },
    ["minecraft:spruce_button"] = {
        layout = {"   "," p ","   "},
        blocks = {
            ["p"]="minecraft:spruce_planks"
        },
        output = 1
    },
    ["minecraft:spruce_door"] = {
        layout = {" pp"," pp"," pp"},
        blocks = {
            ["p"]="minecraft:spruce_planks"
        },
        output = 3
    },
    ["minecraft:birch_stairs"] = {
        layout = {"p  ","pp ","ppp"},
        blocks = {
            ["p"]="minecraft:birch_planks"
        },
        output = 6
    },
}