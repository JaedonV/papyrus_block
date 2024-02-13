minetest.register_node("papyrus_block:papyrus_block", {
    description = "Papyrus Block",
    tiles = {"papyrus_block_top.png", "papyrus_block_top.png", "papyrus_block_side.png"},
    groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
    sounds = default.node_sound_wood_defaults(),
    register = {stair = true, slab = true},
    on_place = minetest.rotate_node,
    paramtype2 = "facedir"
})

minetest.register_craft({
    output = "papyrus_block:papyrus_block",
    recipe = {
        {"default:papyrus", "default:papyrus"},
        {"default:papyrus", "default:papyrus"}
    }
})

minetest.register_craft({
    type = "fuel",
    recipe = "papyrus_block:papyrus_block",
    burntime = 20,
})

minetest.register_craft({
    output = "default:papyrus 4",
    recipe = {
        {"papyrus_block:papyrus_block"}
    }
})