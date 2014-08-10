-- Various misc. nodes

local S = homedecor.gettext

minetest.register_node('homedecor:ceiling_paint', {
	description = S("Textured Ceiling Paint"),
	drawtype = 'signlike',
	tiles = { 'homedecor_ceiling_paint.png' },
	inventory_image = 'homedecor_ceiling_paint_roller.png',
	wield_image = 'homedecor_ceiling_paint_roller.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3 },
	sounds = default.node_sound_leaves_defaults(),
        selection_box = {
			type = "wallmounted",
                         --wall_top = <default>
                         --wall_bottom = <default>
                         --wall_side = <default>
                        },
})

minetest.register_node('homedecor:ceiling_tile', {
	description = S("Drop-Ceiling Tile"),
	drawtype = 'signlike',
	tiles = { 'homedecor_ceiling_tile.png' },
	wield_image = 'homedecor_ceiling_tile.png',
	inventory_image = 'homedecor_ceiling_tile.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3 },
	sounds = default.node_sound_leaves_defaults(),
        selection_box = {
			type = "wallmounted",
                         --wall_top = <default>
                         --wall_bottom = <default>
                         --wall_side = <default>
                        },
})

minetest.register_node('homedecor:rug_small', {
	description = S("Small Throw Rug"),
	drawtype = 'signlike',
	tiles = { 'homedecor_rug_small.png' },
	wield_image = 'homedecor_rug_small.png',
	inventory_image = 'homedecor_rug_small.png',
	sunlight_propagates = true,
	paramtype = 'light',
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	groups = { snappy = 3 },
	sounds = default.node_sound_leaves_defaults(),
        selection_box = {
			type = "wallmounted",
                         --wall_top = <default>
                         --wall_bottom = <default>
                         --wall_side = <default>
                        },
})

minetest.register_node('homedecor:rug_large', {
	description = S("Large Area Rug"),
	drawtype = 'signlike',
	tiles = { 'homedecor_rug_large.png' },
	wield_image = 'homedecor_rug_large.png',
	inventory_image = 'homedecor_rug_large.png',
	sunlight_propagates = true,
	paramtype = 'light',
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	groups = { snappy = 3 },
	sounds = default.node_sound_leaves_defaults(),
        selection_box = {
			type = "wallmounted",
                         --wall_top = <default>
                         --wall_bottom = <default>
                         --wall_side = <default>
                        },
	})

local flower_pot_model = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5, -0.1875, 0.1875, -0.3125, 0.1875},
		{-0.25, -0.5, -0.0625, 0.25, -0.3125, 0.0625},
		{-0.0625, -0.5, -0.25, 0.0625, -0.25, 0.25},
		{-0.25, -0.3125, -0.25, 0.25, -0.125, 0.25},
		{-0.125, -0.3125, -0.3125, 0.125, -0.125, 0.3125},
		{-0.3125, -0.3125, -0.125, 0.3125, -0.125, 0.125},
		{-0.3125, -0.125, -0.25, 0.3125, 0.0625, 0.25},
		{-0.125, -0.125, -0.375, 0.125, 0.0625, 0.375},
		{-0.375, -0.125, -0.125, 0.375, 0.0625, 0.125},
		{-0.25, -0.125, -0.3125, 0.25, 0.0625, 0.3125},
		{-0.4375, 0.0625, -0.1875, 0.4375, 0.25, 0.1875},
		{-0.1875, 0.0625, -0.4375, 0.1875, 0.25, 0.4375},
		{-0.3125, 0.0625, -0.375, 0.3125, 0.25, 0.375},
		{-0.375, 0.0625, -0.3125, 0.375, 0.25, 0.3125},
		{-0.1875, 0.25, -0.5, 0.1875, 0.5, 0.5},
		{-0.5, 0.25, -0.1875, 0.5, 0.5, 0.1875},
		{-0.4375, 0.25, -0.3125, 0.4375, 0.5, 0.3125},
		{-0.3125, 0.25, -0.4375, 0.3125, 0.5, 0.4375},
		{-0.375, 0.25, -0.375, 0.375, 0.5, 0.375},
	}
}

minetest.register_node('homedecor:flower_pot_terracotta', {
	drawtype = "nodebox",
	description = S("Terracotta Flower Pot"),
	tiles = { 'homedecor_flower_pot_terracotta_top.png',
			'homedecor_flower_pot_terracotta_bottom.png',
			'homedecor_flower_pot_terracotta_sides.png',
			'homedecor_flower_pot_terracotta_sides.png',
			'homedecor_flower_pot_terracotta_sides.png',
			'homedecor_flower_pot_terracotta_sides.png'},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = { snappy = 3 },
	node_box = flower_pot_model,
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node('homedecor:flower_pot_black', {
	drawtype = "nodebox",
	description = S("Black Plastic Flower Pot"),
	tiles = { 'homedecor_flower_pot_black_top.png',
			'homedecor_flower_pot_black_bottom.png',
			'homedecor_flower_pot_black_sides.png',
			'homedecor_flower_pot_black_sides.png',
			'homedecor_flower_pot_black_sides.png',
			'homedecor_flower_pot_black_sides.png'},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = { snappy = 3 },
	node_box = flower_pot_model,
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node('homedecor:flower_pot_green', {
	drawtype = "nodebox",
	description = S("Green Plastic Flower Pot"),
	tiles = { 'homedecor_flower_pot_green_top.png',
			'homedecor_flower_pot_green_bottom.png',
			'homedecor_flower_pot_green_sides.png',
			'homedecor_flower_pot_green_sides.png',
			'homedecor_flower_pot_green_sides.png',
			'homedecor_flower_pot_green_sides.png'},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = { snappy = 3 },
	node_box = flower_pot_model,
	sounds = default.node_sound_leaves_defaults(),
})

-- cylinder-shaped objects courtesy Jeija

local cylbox = {}
local detail = 50
local sehne
local size = 0.2

for i = 1, detail-1 do
        sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
        cylbox[i]={((i/detail)-0.5)*size, -0.5, -sehne*size, ((i/detail)+(1/detail)-0.5)*size, 0.5, sehne*size}
end

minetest.register_node("homedecor:pole_brass", {
        description = S("Brass Pole"),
        drawtype = "nodebox",
        tiles = {"homedecor_tile_brass2.png"},
        inventory_image = "homedecor_pole_brass2.png",
        wield_image = "homedecor_pole_brass2.png",
        paramtype = "light",
        is_ground_content = true,
        selection_box = {
                type = "fixed",
                fixed = {-size/2, -0.5, -size/2, size/2, 0.5, size/2},
        },
        groups = {snappy=3},
        sounds = default.node_sound_wood_defaults(),
	walkable = true,
	node_box = {
		type = "fixed",
		fixed = cylbox,
	}
})
	
minetest.register_node("homedecor:pole_wrought_iron", {
        description = S("Wrought Iron Pole"),
        drawtype = "nodebox",
        tiles = {"homedecor_tile_wrought_iron2.png"},
        inventory_image = "homedecor_pole_wrought_iron.png",
        wield_image = "homedecor_pole_wrought_iron.png",
        paramtype = "light",
        is_ground_content = true,
        selection_box = {
                type = "fixed",
                fixed = {-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}
        },
	node_box = {
		type = "fixed",
                fixed = {-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}
	},
        groups = {snappy=3},
        sounds = default.node_sound_wood_defaults(),
	walkable = true,
})

local welcome_mat_colors = { "green", "brown", "grey" }

for _, color in ipairs(welcome_mat_colors) do
	minetest.register_node("homedecor:welcome_mat_"..color, {
		description = "Welcome Mat ("..color..")",
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "nodebox",
		tiles = {
			"homedecor_welcome_mat_"..color..".png",
			"homedecor_welcome_mat_bottom.png",
			"homedecor_welcome_mat_"..color..".png",
		},
		groups = {crumbly=3},
		sounds = default.node_sound_dirt_defaults({
			footstep = {name="default_grass_footstep", gain=0.25},
		}),
		node_box = {
			type = "fixed",
			fixed = { -0.5, -0.5, -0.375, 0.5, -0.46875, 0.375 }
		}
	})
end

minetest.register_node("homedecor:chimney", {
	drawtype = "nodebox",
	paramtype = "light",
	description = "Chimney",
	tiles = {
		"homedecor_chimney_top.png",
		"homedecor_chimney_bottom.png",
		"homedecor_chimney_sides.png",
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, -0.1875},
			{-0.25, -0.5, 0.1875, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.1875, 0.5, 0.25},
			{0.1875, -0.5, -0.25, 0.25, 0.5, 0.25},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.25, -0.5, -0.25, 0.25, 0.5, 0.25 }
	},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("homedecor:fishtank", {
	drawtype = "nodebox",
	description = "Fishtank",
	tiles = {
		"homedecor_fishtank_top.png",
		"homedecor_fishtank_bottom.png",
		"homedecor_fishtank_right.png",
		"homedecor_fishtank_left.png",
		"homedecor_fishtank_back.png",
		"homedecor_fishtank_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,    -0.5,    -0.375,  0.5,    -0.4375, 0.375},
			{-0.4375, -0.4375, -0.3125, 0.4375,  0.1875, 0.3125},
			{-0.4375,  0.1875, -0.1875, 0.4375,  0.25,   0.1875},
			{-0.1875,  0.0625,  0.0625, 0.1875,  0.25,   0.375},
			{ 0.125,  -0.5,     0.25,   0.1875,  0.1875, 0.375},
			{-0.375,   0.25,   -0.125,  0.375,   0.3125, 0.125},
		}
	},
	use_texture_alpha = true,
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.375, 0.5, 0.3125, 0.375 }
	},
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	on_rightclick = function(pos, node, clicker)
		fdir = minetest.get_node(pos).param2
		minetest.add_node(pos, {name = "homedecor:fishtank_lighted", param2 = fdir})
	end
})

minetest.register_node("homedecor:fishtank_lighted", {
	drawtype = "nodebox",
	description = "Fishtank",
	tiles = {
		"homedecor_fishtank_top.png",
		"homedecor_fishtank_bottom.png",
		"homedecor_fishtank_right_lighted.png",
		"homedecor_fishtank_left_lighted.png",
		"homedecor_fishtank_back_lighted.png",
		"homedecor_fishtank_front_lighted.png"
	},
	paramtype = "light",
	light_source = LIGHT_MAX-4,
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,    -0.5,    -0.375,  0.5,    -0.4375, 0.375},
			{-0.4375, -0.4375, -0.3125, 0.4375,  0.1875, 0.3125},
			{-0.4375,  0.1875, -0.1875, 0.4375,  0.25,   0.1875},
			{-0.1875,  0.0625,  0.0625, 0.1875,  0.25,   0.375},
			{ 0.125,  -0.5,     0.25,   0.1875,  0.1875, 0.375},
			{-0.375,   0.25,   -0.125,  0.375,   0.3125, 0.125},
		}
	},
	use_texture_alpha = true,
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.375, 0.5, 0.3125, 0.375 }
	},
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
	on_rightclick = function(pos, node, clicker)
		fdir = minetest.get_node(pos).param2
		minetest.add_node(pos, {name = "homedecor:fishtank", param2 = fdir})
	end
})

minetest.register_node('homedecor:cardboard_box', {
	drawtype = "nodebox",
	description = S("Cardboard box"),
	tiles = {
		'homedecor_cardboard_box_tb.png',
		'homedecor_cardboard_box_tb.png',
		'homedecor_cardboard_box_sides.png'
	},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
    selection_box = {
            type = "fixed",
            fixed = { -0.5, -0.5, -0.5, 0.5, 0, 0.5 }
    },
	node_box = {
		type = "fixed",
		fixed = {
			{0.1875, -0.5,    -0.25,    0.25,   0,       0.25},
			{-0.25,  -0.5,    -0.25,   -0.1875, 0,       0.25},
			{-0.25,  -0.5,     0.1875,  0.25,   0,       0.25},
			{-0.25,  -0.5,    -0.25,    0.25,   0,      -0.1875},
			{-0.25,  -0.5,    -0.25,    0.25,  -0.4375,  0.25},
			{0.1875, -0.0625, -0.25,    0.5,    0,       0.25},
			{-0.5,   -0.0625, -0.25,   -0.1875, 0,       0.25},
			{-0.25,  -0.0625,  0.1875,  0.25,   0,       0.5},
			{-0.25,  -0.0625, -0.5,     0.25,   0,      -0.1875},
		}
	},
	groups = { snappy = 3 },
	sounds = default.node_sound_wood_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,6]"..
				"list[current_name;main;2,0;4,1;]"..
				"list[current_player;main;0,2;8,4;]")
		meta:set_string("infotext", S("Cardboard box"))
		local inv = meta:get_inventory()
		inv:set_size("main", 8)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", S("%s moves stuff in cardboard box at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", S("%s moves stuff to cardboard box at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", S("%s takes stuff from cardboard box at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
})

minetest.register_node("homedecor:dvd_cd_cabinet", {
	description = "DVD/CD cabinet",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"homedecor_dvdcd_cabinet_top.png",
		"homedecor_dvdcd_cabinet_bottom.png",
		"homedecor_dvdcd_cabinet_sides.png",
		"homedecor_dvdcd_cabinet_sides.png^[transformFX",
		"homedecor_dvdcd_cabinet_back.png",
		"homedecor_dvdcd_cabinet_front.png",
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.5},
			{0.4375, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.0625, -0.5, 0, 0.0625, 0.5, 0.5},
			{-0.5, 0.4375, 0, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.4375},
			{-0.375, -0.5, 0.02756, -0.125, 0.5, 0.5},
			{0.125, -0.5, 0.01217, 0.375, 0.5, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, 0, 0.5, 0.5, 0.5 }
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node('homedecor:filing_cabinet', {
	drawtype = "nodebox",
	description = S("Filing Cabinet"),
	tiles = {
		'homedecor_filing_cabinet_top.png',
		'homedecor_filing_cabinet_bottom.png',
		'homedecor_filing_cabinet_sides.png',
		'homedecor_filing_cabinet_sides.png^[transformFX',
		'homedecor_filing_cabinet_back.png',
		'homedecor_filing_cabinet_front.png'
	},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
        selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 }
        },
        node_box = {
                type = "fixed",
		fixed = {
			{ -8/16, -8/16, -30/64,  8/16,  8/16,   8/16 },	-- main body
			{ -7/16, -7/16, -8/16,  7/16,  7/16,   8/16 },	-- drawer
		}
        },
	groups = { snappy = 3 },
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,7]"..
				"list[current_name;main;0,0;8,2;]"..
				"list[current_player;main;0,3;8,4;]")
		meta:set_string("infotext", S("Filing cabinet"))
		local inv = meta:get_inventory()
		inv:set_size("main", 16)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", S("%s moves stuff in filing cabinet at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", S("%s moves stuff to filing cabinet at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", S("%s takes stuff from filing cabinet at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
})

minetest.register_node("homedecor:dishwasher", {
	description = "Dishwasher",
	drawtype = "nodebox",
	tiles = {
		"homedecor_dishwasher_top.png",
		"homedecor_dishwasher_bottom.png",
		"homedecor_dishwasher_sides.png",
		"homedecor_dishwasher_sides.png^[transformFX",
		"homedecor_dishwasher_back.png",
		"homedecor_dishwasher_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375},
			{-0.5, -0.5, -0.5, 0.5, 0.1875, 0.1875},
			{-0.4375, -0.5, -0.5, 0.4375, 0.4375, 0.4375},
		}
	},
    selection_box = {
            type = "fixed",
            fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 }
    },
	groups = { snappy = 3 },
})

minetest.register_node("homedecor:dishwasher_wood", {
	description = "Dishwasher",
	tiles = {
		"homedecor_kitchen_cabinet_top.png",
		"homedecor_dishwasher_bottom.png",
		"homedecor_dishwasher_sides.png",
		"homedecor_dishwasher_sides.png^[transformFX",
		"homedecor_dishwasher_back.png",
		"homedecor_dishwasher_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = { snappy = 3 },
})

minetest.register_node("homedecor:dishwasher_steel", {
	description = "Dishwasher",
	tiles = {
		"homedecor_kitchen_cabinet_top_steel.png",
		"homedecor_dishwasher_bottom.png",
		"homedecor_dishwasher_sides.png",
		"homedecor_dishwasher_sides.png^[transformFX",
		"homedecor_dishwasher_back.png",
		"homedecor_dishwasher_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = { snappy = 3 },
})

minetest.register_node("homedecor:dishwasher_marble", {
	description = "Dishwasher",
	tiles = {
		"homedecor_kitchen_cabinet_top_marble.png",
		"homedecor_dishwasher_bottom.png",
		"homedecor_dishwasher_sides.png",
		"homedecor_dishwasher_sides.png^[transformFX",
		"homedecor_dishwasher_back.png",
		"homedecor_dishwasher_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = { snappy = 3 },
})

minetest.register_node("homedecor:dishwasher_granite", {
	description = "Dishwasher",
	tiles = {
		"homedecor_kitchen_cabinet_top_granite.png",
		"homedecor_dishwasher_bottom.png",
		"homedecor_dishwasher_sides.png",
		"homedecor_dishwasher_sides.png^[transformFX",
		"homedecor_dishwasher_back.png",
		"homedecor_dishwasher_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = { snappy = 3 },
})

-- doghouse and pool table, models contributed by jp

minetest.register_node("homedecor:doghouse_base", {
	tiles = {
		"homedecor_doghouse_base_top.png",
		"homedecor_doghouse_base_bottom.png",
		"homedecor_doghouse_base_side.png",
		"homedecor_doghouse_base_side.png",
		"homedecor_doghouse_base_back.png",
		"homedecor_doghouse_base_front.png"
	},
	description = "Doghouse",
	inventory_image = "homedecor_doghouse_inv.png",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125, -0.5, -0.4375, 0.4375, -0.3125, -0.3125}, -- NodeBox1
			{0.3125, -0.5, 0.3125, 0.4375, -0.3125, 0.4375}, -- NodeBox2
			{-0.4375, -0.5, 0.3125, -0.3125, -0.3125, 0.4375}, -- NodeBox3
			{-0.4375, -0.5, -0.4375, -0.3125, -0.3125, -0.3125}, -- NodeBox4
			{-0.4375, -0.3125, -0.4375, -0.375, 0.5, 0.4375}, -- NodeBox5
			{-0.4375, 0.3125, -0.375, 0.4375, 0.5, -0.3125}, -- NodeBox6
			{-0.4375, -0.3125, -0.4375, 0.4375, -0.25, 0.4375}, -- NodeBox7
			{-0.375, -0.3125, -0.375, -0.1875, 0.4375, -0.3125}, -- NodeBox8
			{0.1875, -0.3125, -0.375, 0.4375, 0.5, -0.3125}, -- NodeBox9
			{0.375, -0.25, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox10
			{-0.4375, -0.3125, 0.375, 0.4375, 0.5, 0.4375}, -- NodeBox11
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, 1.0, 0.5 }
	},
	groups = {snappy=3},
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.under
		local pnode = minetest.get_node(pointed_thing.under)
		local rnodedef = minetest.registered_nodes[pnode.name]

		if not rnodedef["buildable_to"] then
			pos = pointed_thing.above
		end

		local fdir = minetest.dir_to_facedir(placer:get_look_dir())
		local pos2 = { x = pos.x, y=pos.y + 1, z = pos.z }

		local tnode = minetest.get_node(pos)
		local tnode2 = minetest.get_node(pos2)

		if homedecor.get_nodedef_field(tnode.name, "buildable_to")
		  and homedecor.get_nodedef_field(tnode2.name, "buildable_to")
		  and not minetest.is_protected(pos, placer:get_player_name())
		  and not minetest.is_protected(pos2, placer:get_player_name()) then
			minetest.add_node(pos, { name = "homedecor:doghouse_base", param2 = fdir })
			minetest.add_node(pos2, { name = "homedecor:doghouse_roof", param2 = fdir })
			if not homedecor.expect_infinite_stacks then
				itemstack:take_item()
				return itemstack
			end
		end
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local pos2 = { x = pos.x, y=pos.y + 1, z = pos.z }
		if minetest.get_node(pos2).name == "homedecor:doghouse_roof" then
			minetest.remove_node(pos2)
		end
	end
})

minetest.register_node("homedecor:doghouse_roof", {
	tiles = {
		"homedecor_doghouse_roof_top.png",
		"homedecor_doghouse_roof_bottom.png",
		"homedecor_doghouse_roof_side.png",
		"homedecor_doghouse_roof_side.png",
		"homedecor_doghouse_roof_back.png",
		"homedecor_doghouse_roof_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5}, -- NodeBox17
			{-0.4375, -0.4375, -0.5, -0.375, -0.375, 0.5}, -- NodeBox18
			{-0.375, -0.375, -0.5, -0.3125, -0.3125, 0.5}, -- NodeBox19
			{-0.3125, -0.3125, -0.5, -0.25, -0.25, 0.5}, -- NodeBox20
			{-0.25, -0.25, -0.5, -0.1875, -0.1875, 0.5}, -- NodeBox21
			{-0.1875, -0.1875, -0.5, -0.125, -0.125, 0.5}, -- NodeBox22
			{-0.125, -0.125, -0.5, -0.0625, -0.0625, 0.5}, -- NodeBox23
			{-0.0625, -0.0625, -0.5, 0.0625, 0, 0.5}, -- NodeBox24
			{0.0625, -0.125, -0.5, 0.125, -0.0625, 0.5}, -- NodeBox25
			{0.125, -0.1875, -0.5, 0.1875, -0.125, 0.5}, -- NodeBox26
			{0.1875, -0.25, -0.5, 0.25, -0.1875, 0.5}, -- NodeBox27
			{0.25, -0.3125, -0.5, 0.3125, -0.25, 0.5}, -- NodeBox28
			{0.3125, -0.375, -0.5, 0.375, -0.3125, 0.5}, -- NodeBox29
			{0.375, -0.4375, -0.5, 0.4375, -0.375, 0.5}, -- NodeBox30
			{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox31
			{-0.4375, -0.5, -0.375, 0.4375, -0.4375, 0.4375}, -- NodeBox32
			{-0.375, -0.4375, -0.375, 0.375, -0.375, 0.4375}, -- NodeBox33
			{-0.3125, -0.375, -0.375, 0.3125, -0.3125, 0.4375}, -- NodeBox34
			{-0.25, -0.3125, -0.375, 0.25, -0.25, 0.4375}, -- NodeBox35
			{-0.1875, -0.25, -0.375, 0.1875, -0.1875, 0.4375}, -- NodeBox36
			{-0.125, -0.1875, -0.375, 0.125, -0.125, 0.4375}, -- NodeBox37
			{0.0625, -0.125, -0.375, -0.0625, -0.0625, 0.4375}, -- NodeBox38
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { 0, 0, 0, 0, 0, 0 }
	},
	groups = {snappy=3, not_in_creative_inventory=1},
})

local fdir_to_fwd = {
	{  0,  1 },
	{  1,  0 },
	{  0, -1 },
	{ -1,  0 },
}

local swap_fdir = { 2, 3, 0, 1 }

minetest.register_node("homedecor:pool_table", {
	tiles = {
		"homedecor_pool_table_top1.png",
		"homedecor_pool_table_bottom1.png",
		"homedecor_pool_table_sides1.png",
		"homedecor_pool_table_sides2.png",
		"homedecor_pool_table_end1.png",
		"homedecor_pool_table_end2.png"
	},
	description = "Pool Table",
	inventory_image = "homedecor_pool_table_inv.png",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375,   -0.5,     -0.375,   -0.25,    0.1875,   -0.25},    --  NodeBox1
			{0.25,     -0.5,     -0.375,   0.375,    0.1875,   -0.25},    --  NodeBox2
			{-0.25,    -0.125,   -0.3125,  0.25,     -0.0625,  0},        --  NodeBox3
			{-0.3125,  -0.0625,  -0.3125,  -0.25,    0.1875,   0},        --  NodeBox4
			{0.25,     -0.0625,  -0.3125,  0.3125,   0.1875,   0},        --  NodeBox5
			{-0.3125,  -0.125,   0,        0.3125,   0.1875,   0.0625},   --  NodeBox6
			{0.25,     -0.125,   -0.25,    0.3125,   0.1875,   0.5},      --  NodeBox7
			{-0.3125,  -0.125,   -0.25,    -0.25,    0.1875,   0.5},      --  NodeBox8
			{-0.5,     0.1875,   -0.5,     -0.4375,  0.25,     0.5},      --  NodeBox9
			{-0.5,     0.1875,   -0.5,     0.5,      0.25,     -0.4375},  --  NodeBox10
			{0.4375,   0.1875,   -0.5,     0.5,      0.25,     0.5},      --  NodeBox11
			{-0.3125,  0.1875,   -0.3125,  0.3125,   0.25,     0.5},      --  NodeBox12
			{-0.4375,  0.1875,   -0.3125,  0.4375,   0.25,     0.4375},   --  NodeBox13
			{-0.3125,  0.1875,   -0.5,     0.3125,   0.25,     -0.3125},  --  NodeBox14
			{-0.25,    -0.125,   -0.375,   0.25,     0,        -0.3125},  --  NodeBox15
			{0.25,     0.125,    -0.4375,  0.4375,   0.1875,   0.5},      --  NodeBox16
			{-0.4375,  0.125,    -0.4375,  -0.25,    0.1875,   0.5},      --  NodeBox17
			{-0.5,     0.25,     -0.5,     -0.4375,  0.3125,   0.5},      --  NodeBox18
			{-0.5,     0.25,     -0.5,     0.5,      0.3125,   -0.4375},  --  NodeBox19
			{0.4375,   0.25,     -0.5,     0.5,      0.3125,   0.5},      --  NodeBox20
			{-0.4375,  0.25,     -0.3125,  -0.375,   0.3125,   0.4375},   --  NodeBox23
			{-0.3125,  0.25,     -0.4375,  0.3125,   0.3125,   -0.375},   --  NodeBox24
			{0.375,    0.25,     -0.3125,  0.4375,   0.3125,   0.4375},   --  NodeBox25
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, 0.3125, 1.5 }
	},
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.under
		local pnode = minetest.get_node(pointed_thing.under)
		local rnodedef = minetest.registered_nodes[pnode.name]

		if not rnodedef["buildable_to"] then
			pos = pointed_thing.above
		end

		local fdir = minetest.dir_to_facedir(placer:get_look_dir())
		local pos2 = { x = pos.x + fdir_to_fwd[fdir+1][1], y=pos.y, z = pos.z + fdir_to_fwd[fdir+1][2] }

		local tnode = minetest.get_node(pos)
		local tnode2 = minetest.get_node(pos2)

		if homedecor.get_nodedef_field(tnode.name, "buildable_to")
		  and homedecor.get_nodedef_field(tnode2.name, "buildable_to")
		  and not minetest.is_protected(pos, placer:get_player_name())
		  and not minetest.is_protected(pos2, placer:get_player_name()) then
			minetest.add_node(pos, { name = "homedecor:pool_table", param2 = fdir })
			print(fdir)
			print(swap_fdir[fdir+1])
			minetest.add_node(pos2, { name = "homedecor:pool_table2", param2 = swap_fdir[fdir+1] })
			if not homedecor.expect_infinite_stacks then
				itemstack:take_item()
				return itemstack
			end
		end
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local fdir = oldnode.param2
		local pos2 = { x = pos.x + fdir_to_fwd[fdir+1][1], y=pos.y, z = pos.z + fdir_to_fwd[fdir+1][2] }
		if minetest.get_node(pos2).name == "homedecor:pool_table2" then
			minetest.remove_node(pos2)
		end
	end
})

minetest.register_node("homedecor:pool_table2", {
	tiles = {
		"homedecor_pool_table_top2.png",
		"homedecor_pool_table_bottom2.png",
		"homedecor_pool_table_sides3.png",
		"homedecor_pool_table_sides4.png",
		"homedecor_pool_table_end3.png",
		"homedecor_pool_table_end4.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375,   -0.5,     -0.375,   -0.25,    0.1875,   -0.25},    --  NodeBox1
			{0.25,     -0.5,     -0.375,   0.375,    0.1875,   -0.25},    --  NodeBox2
			{-0.25,    -0.125,   -0.3125,  0.25,     -0.0625,  0},        --  NodeBox3
			{-0.3125,  -0.0625,  -0.3125,  -0.25,    0.1875,   0},        --  NodeBox4
			{0.25,     -0.0625,  -0.3125,  0.3125,   0.1875,   0},        --  NodeBox5
			{-0.3125,  -0.125,   0,        0.3125,   0.1875,   0.0625},   --  NodeBox6
			{0.25,     -0.125,   -0.25,    0.3125,   0.1875,   0.5},      --  NodeBox7
			{-0.3125,  -0.125,   -0.25,    -0.25,    0.1875,   0.5},      --  NodeBox8
			{-0.5,     0.1875,   -0.5,     -0.4375,  0.25,     0.5},      --  NodeBox9
			{-0.5,     0.1875,   -0.5,     0.5,      0.25,     -0.4375},  --  NodeBox10
			{0.4375,   0.1875,   -0.5,     0.5,      0.25,     0.5},      --  NodeBox11
			{-0.3125,  0.1875,   -0.3125,  0.3125,   0.25,     0.5},      --  NodeBox12
			{-0.4375,  0.1875,   -0.3125,  0.4375,   0.25,     0.4375},   --  NodeBox13
			{-0.3125,  0.1875,   -0.5,     0.3125,   0.25,     -0.3125},  --  NodeBox14
			{-0.25,    -0.125,   -0.375,   0.25,     0,        -0.3125},  --  NodeBox15
			{0.25,     0.125,    -0.4375,  0.4375,   0.1875,   0.5},      --  NodeBox16
			{-0.4375,  0.125,    -0.4375,  -0.25,    0.1875,   0.5},      --  NodeBox17
			{-0.5,     0.25,     -0.5,     -0.4375,  0.3125,   0.5},      --  NodeBox18
			{-0.5,     0.25,     -0.5,     0.5,      0.3125,   -0.4375},  --  NodeBox19
			{0.4375,   0.25,     -0.5,     0.5,      0.3125,   0.5},      --  NodeBox20
			{-0.4375,  0.25,     -0.3125,  -0.375,   0.3125,   0.4375},   --  NodeBox23
			{-0.3125,  0.25,     -0.4375,  0.3125,   0.3125,   -0.375},   --  NodeBox24
			{0.375,    0.25,     -0.3125,  0.4375,   0.3125,   0.4375},   --  NodeBox25
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { 0, 0, 0, 0, 0, 0 }
	},
})

minetest.register_node("homedecor:trash_can", {
	tiles = {
		"homedecor_trashcan_tb.png",
		"homedecor_trashcan_tb.png",
		"homedecor_trashcan_sides.png",
		"homedecor_trashcan_sides.png",
		"homedecor_trashcan_sides.png",
		"homedecor_trashcan_sides.png"
	},
	inventory_image = "homedecor_trashcan_inv.png",
	description = "Trash Can",
	drawtype = "nodebox",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {snappy=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875,  -0.5,     -0.1875,  0.1875,   -0.4375,  0.1875},   --  NodeBox8
			{-0.125,   -0.5,     0.1875,   0.125,    -0.375,   0.25},     --  NodeBox9
			{-0.125,   -0.5,     -0.25,    0.125,    -0.375,   -0.1875},  --  NodeBox10
			{0.1875,   -0.5,     -0.125,   0.25,     -0.375,   0.125},    --  NodeBox11
			{-0.25,    -0.5,     -0.125,   -0.1875,  -0.375,   0.125},    --  NodeBox12
			{-0.1875,  -0.4375,  0.125,    -0.125,   -0.375,   0.1875},   --  NodeBox13
			{0.125,    -0.4375,  -0.1875,  0.1875,   -0.375,   -0.125},   --  NodeBox15
			{-0.125,   -0.375,   0.1875,   -0.0625,  0.125,    0.25},     --  NodeBox17
			{0,        -0.375,   0.1875,   0.0625,   0.125,    0.25},     --  NodeBox18
			{0.125,    -0.5,     0.125,    0.1875,   0.125,    0.1875},   --  NodeBox19
			{0.1875,   -0.375,   0,        0.25,     0.125,    0.0625},   --  NodeBox20
			{0.1875,   -0.375,   -0.125,   0.25,     0.125,    -0.0625},  --  NodeBox21
			{0.0625,   -0.375,   -0.25,    0.125,    0.125,    -0.1875},  --  NodeBox22
			{-0.0625,  -0.375,   -0.25,    0,        0.125,    -0.1875},  --  NodeBox23
			{-0.125,   -0.4375,  -0.1875,  -0.1875,  0.125,    -0.125},   --  NodeBox24
			{-0.25,    -0.375,   -0.0625,  -0.1875,  0.125,    0},        --  NodeBox25
			{-0.25,    -0.375,   0.0625,   -0.1875,  0.125,    0.125},    --  NodeBox26
			{-0.125,   -0.3125,  -0.25,    0.125,    -0.25,    -0.1875},  --  NodeBox27
			{0.1875,   -0.3125,  -0.125,   0.25,     -0.25,    0.125},    --  NodeBox28
			{-0.125,   -0.3125,  0.1875,   0.125,    -0.25,    0.25},     --  NodeBox29
			{-0.25,    -0.3125,  -0.125,   -0.1875,  -0.25,    0.125},    --  NodeBox30
			{0.125,    -0.3125,  -0.1875,  0.1875,   -0.25,    -0.125},   --  NodeBox31
			{-0.1875,  -0.3125,  0.125,    -0.125,   -0.25,    0.1875},   --  NodeBox33
			{-0.125,   -0.1875,  -0.25,    0.125,    -0.125,   -0.1875},  --  NodeBox35
			{0.1875,   -0.1875,  -0.125,   0.25,     -0.125,   0.125},    --  NodeBox36
			{-0.125,   -0.1875,  0.1875,   0.125,    -0.125,   0.25},     --  NodeBox37
			{-0.25,    -0.1875,  -0.125,   -0.1875,  -0.125,   0.125},    --  NodeBox38
			{-0.125,   -0.0625,  -0.25,    0.125,    0,        -0.1875},  --  NodeBox39
			{0.1875,   0.0625,   -0.125,   0.25,     0.125,    0.125},    --  NodeBox44
			{-0.125,   0.0625,   0.1875,   0.125,    0.125,    0.25},     --  NodeBox45
			{0.125,    -0.1875,  -0.1875,  0.1875,   -0.125,   -0.125},   --  NodeBox44
			{0.125,    0.0625,   -0.1875,  0.1875,   0.125,    -0.125},   --  NodeBox45
			{-0.1875,  -0.1875,  0.125,    -0.125,   -0.125,   0.1875},   --  NodeBox47
			{-0.1875,  -0.0625,  0.125,    -0.125,   0,        0.1875},   --  NodeBox48
			{-0.1875,  0.0625,   0.125,    -0.125,   0.125,    0.1875},   --  NodeBox49
			{0.125,    -0.0625,  -0.1875,  0.1875,   0,        -0.125},   --  NodeBox51
			{-0.25,    0.0625,   -0.125,   -0.1875,  0.125,    0.125},    --  NodeBox48
			{-0.25,    -0.0625,  -0.125,   -0.1875,  0,        0.125},    --  NodeBox49
			{-0.125,   0.0625,   -0.25,    0.125,    0.125,    -0.1875},  --  NodeBox50
			{0.1875,   -0.0625,  -0.125,   0.25,     0,        0.125},    --  NodeBox51
			{-0.125,   -0.0625,  0.1875,   0.125,    0,        0.25},     --  NodeBox52
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.25, -0.5, -0.25, 0.25, 0.125, 0.25 }
	}
})

