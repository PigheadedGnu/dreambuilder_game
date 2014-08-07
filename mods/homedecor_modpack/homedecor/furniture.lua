local S = homedecor.gettext

-- 3dforniture tables ... well, they used to be :P

local table_colors = { "", "mahogany", "white" }

for _, i in ipairs(table_colors) do
	local color = "_"..i
	local desc = S("Table ("..i..")")

	if i == "" then
		color = ""
		desc = S("Table")
	end

	minetest.register_node("homedecor:table"..color, {
		description = desc,
		tiles = { "forniture_wood"..color..".png" },
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		node_box = {
		    type = "fixed",
		    fixed = {
		        { -0.4, -0.5, -0.4, -0.3,  0.4, -0.3 },
		        {  0.3, -0.5, -0.4,  0.4,  0.4, -0.3 },
		        { -0.4, -0.5,  0.3, -0.3,  0.4,  0.4 },
		        {  0.3, -0.5,  0.3,  0.4,  0.4,  0.4 },
		        { -0.5,  0.4, -0.5,  0.5,  0.5,  0.5 },
		        { -0.4, -0.2, -0.3, -0.3, -0.1,  0.3 },
		        {  0.3, -0.2, -0.4,  0.4, -0.1,  0.3 },
		        { -0.3, -0.2, -0.4,  0.4, -0.1, -0.3 },
		        { -0.3, -0.2,  0.3,  0.3, -0.1,  0.4 },
		    },
		},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	})  
end

local chaircolors = {
	{ "", "plain" },
	{ "black", "Black" },
	{ "red", "Red" },
	{ "pink", "Pink" },
	{ "violet", "Violet" },
	{ "blue", "Blue" },
	{ "dark_green", "Dark Green" },
}

for i in ipairs(chaircolors) do

	local color = "_"..chaircolors[i][1]
	local color2 = chaircolors[i][1]
	local name = S(chaircolors[i][2])

	if chaircolors[i][1] == "" then 
		color = ""
	end

	minetest.register_node("homedecor:chair"..color, {
	    description = S("Kitchen chair (%s)"):format(name),
		tiles = { 
			"forniture_kitchen_chair_top"..color..".png",
			"forniture_wood.png",
			"forniture_kitchen_chair_sides"..color..".png",
			"forniture_kitchen_chair_sides"..color..".png^[transformFX",
			"forniture_kitchen_chair_back"..color..".png",
			"forniture_kitchen_chair_front"..color..".png",
		 },
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		node_box = {
		    type = "fixed",
		    fixed = {
				{-0.3125, -0.5, 0.1875, -0.1875, 0.5, 0.3125},
				{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
				{-0.3125, -0.5, -0.3125, -0.1875, 0, -0.1875},
				{0.1875, -0.5, -0.3125, 0.3125, 0, -0.1875},
				{-0.3125, -0.125, -0.3125, 0.3125, 0, 0.3125},
				{-0.25, 0.0625, 0.25, 0.25, 0.4375, 0.25},
		    },
		},
		selection_box = {
		    type = "fixed",
		    fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
		},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	})

	if color ~= "" then 
		minetest.register_node("homedecor:armchair"..color, {
			description = S("Armchair (%s)"):format(name),
			tiles = { "forniture_armchair_top"..color..".png" },
			drawtype = "nodebox",
			sunlight_propagates = true,
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
			type = "fixed",
			fixed = {
				{ -0.50, -0.50, -0.45, -0.30,  0.05,  0.30 },
				{ -0.45, -0.50, -0.50, -0.35,  0.05, -0.45 },
				{ -0.45,  0.05, -0.45, -0.35,  0.10,  0.15 },
				{  0.30, -0.50, -0.45,  0.50,  0.05,  0.30 },
				{  0.35, -0.50, -0.50,  0.45,  0.05, -0.45 },
				{  0.35,  0.05, -0.45,  0.45,  0.10,  0.15 },
				{ -0.50, -0.50,  0.30,  0.50,  0.45,  0.50 },
				{ -0.45,  0.45,  0.35,  0.45,  0.50,  0.45 },
				{ -0.30, -0.45, -0.35,  0.30, -0.10,  0.30 },
				{ -0.30, -0.45, -0.40,  0.30, -0.15, -0.35 },
				{ -0.50,  0.05,  0.15, -0.30,  0.45,  0.30 },
				{ -0.45,  0.10,  0.10, -0.35,  0.45,  0.15 },
				{ -0.45,  0.45,  0.15, -0.35,  0.50,  0.35 },
				{  0.30,  0.05,  0.15,  0.50,  0.45,  0.30 },
				{  0.35,  0.10,  0.10,  0.45,  0.45,  0.15 },
				{  0.35,  0.45,  0.15,  0.45,  0.50,  0.35 },
			},
			},
			groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
		})

		minetest.register_craft({
			output = "homedecor:armchair"..color.." 2",
			recipe = {
			{ "wool:"..color2,""},
			{ "group:wood","group:wood" },
			{ "wool:"..color2,"wool:"..color2 },
			},
		})
	end
end

local repl = { off="low", low="med", med="hi", hi="max", max="off", }
local lamp_colors = { "", "blue", "green", "pink", "red", "violet" }

local function reg_lamp(suffix, nxt, desc, tilesuffix, light, color)
	local lampcolor = "_"..color
	if color == "" then	lampcolor = "" end
	minetest.register_node("homedecor:table_lamp"..lampcolor.."_"..suffix, {
	description = S(desc),
	drawtype = "nodebox",
	tiles = {
		"forniture_table_lamp_s"..tilesuffix..".png",
		"forniture_table_lamp_s"..tilesuffix..".png",
		"forniture_table_lamp"..lampcolor.."_l"..tilesuffix..".png",
	},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{ -0.1500, -0.500, -0.1500,  0.1500, -0.45,  0.1500 },
			{ -0.0500, -0.450, -0.0500,  0.0500, -0.40,  0.0500 },
			{ -0.0250, -0.400, -0.0250,  0.0250, -0.10,  0.0250 },
			{ -0.0125, -0.125, -0.2000,  0.0125, -0.10,  0.2000 },
			{ -0.2000, -0.125, -0.0125,  0.2000, -0.10,  0.0125 },
			{ -0.2000, -0.100, -0.2000, -0.1750,  0.30,  0.2000 },
			{  0.1750, -0.100, -0.2000,  0.2000,  0.30,  0.2000 },
			{ -0.1750, -0.100, -0.2000,  0.1750,  0.30, -0.1750 },
			{ -0.1750, -0.100,  0.1750,  0.1750,  0.30,  0.2000 },
		},
	},
	walkable = false,
	light_source = light,
	selection_box = {
		type = "fixed",
		fixed = { -0.2, -0.5, -0.2, 0.2, 0.30, 0.2 },
	},
	groups = {cracky=2,oddly_breakable_by_hand=1,
		not_in_creative_inventory=((desc == nil) and 1) or nil,
	},
	drop = "homedecor:table_lamp"..lampcolor.."_off",
	on_punch = function(pos, node, puncher)
		node.name = "homedecor:table_lamp"..lampcolor.."_"..repl[suffix]
		minetest.set_node(pos, node)
		nodeupdate(pos)
	end,
	})
	if lampcolor == "" then 
		minetest.register_alias("3dforniture:table_lamp_"..suffix, "homedecor:table_lamp_"..suffix)
	end
end

for _, color in ipairs(lamp_colors) do
	reg_lamp("off", "low", "Table Lamp",  "", nil,	color )
	reg_lamp("low", "med", nil,          "l", 3,	color )
	reg_lamp("med", "hi" , nil,          "m", 7,	color )
	reg_lamp("hi" , "max", nil,          "h", 11,	color )
	reg_lamp("max", "off", nil,          "x", 14,	color )
end

minetest.register_node(":homedecor:openframe_bookshelf", {
	description = "Bookshelf (open-frame)",
	drawtype = "nodebox",
	is_ground_content = false,
	groups = {choppy=3,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
	tiles = {
		"3dbookshelf_openframe_top.png",
		"3dbookshelf_openframe_bottom.png",
		"3dbookshelf_openframe_right.png",
		"3dbookshelf_openframe_left.png",
		"3dbookshelf_openframe_back.png",
		"3dbookshelf_openframe_front.png"

	},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, 0, 0.5, 0.5, 0.5 }
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, 0, -0.375, 0.5, 0.5},
			{0.375, -0.5, 0, 0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, -0.4375, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			{-0.375, 0.0625, 0.176, -0.25, 0.5, 0.5},
			{-0.25, 0.0625, 0.253, -0.1875, 0.4375, 0.5},
			{-0.1875, 0.0625, 0.227, -0.125, 0.5, 0.5},
			{-0.125, 0.0625, 0.176, 0, 0.4375, 0.5},
			{0, 0.0625, 0.232, 0.0625, 0.375, 0.5},
			{0.0625, 0.0625, 0.130, 0.1875, 0.5, 0.5},
			{0.1875, 0.0625, 0.217, 0.25, 0.4375, 0.5},
			{0.25, 0.0625, 0.166, 0.3125, 0.5, 0.5},
			{0.3125, 0.0625, 0.242, 0.375, 0.4375, 0.5},
			{-0.375, -0.4375, 0.191, -0.3125, -0.0625, 0.5},
			{-0.3125, -0.4375, 0.191, -0.1875, -0.125, 0.5},
			{-0.1875, -0.4375, 0.227, -0.125, -0.0625, 0.5},
			{-0.125, -0.4375, 0.0737, 0, -0.0625, 0.5},
			{0, -0.4375, 0.145, 0.0625, -0.125, 0.5},
			{0.0625, -0.4375, 0.212, 0.125, -0.1875, 0.5},
			{0.125, -0.4375, 0.207, 0.1875, -0.125, 0.5},
			{0.1875, -0.4375, 0.176, 0.25, -0.125, 0.5},
			{0.25, -0.4375, 0.258, 0.3125, -0.1875, 0.5},
			{0.3125, -0.4375, 0.130, 0.375, -0.0625, 0.5}
		}
	}
})

-- decorative bed and wardrobe, models by jp

minetest.register_node("homedecor:bed_blue_head", {
	tiles = {
		"homedecor_bed_blue_top1.png",
		"homedecor_bed_bottom1.png",
		"homedecor_bed_blue_side1.png",
		"homedecor_bed_blue_side1.png^[transformFX",
		"homedecor_bed_blue_head1.png",
		"homedecor_bed_blue_head2.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {snappy=3, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,     -0.5,     0.4375,   -0.375,  0.5,      0.5},      --  NodeBox1
			{0.375,    -0.5,     0.4375,   0.5,     0.5,      0.5},      --  NodeBox2
			{-0.5,     0.25,     0.4375,   0.5,     0.4375,   0.5},      --  NodeBox3
			{-0.5,     0,        0.4375,   0.5,     0.1875,   0.5},      --  NodeBox4
			{-0.5,     -0.375,   0.4375,   0.5,     -0.125,   0.5},      --  NodeBox5
			{-0.4375,  -0.375,   -0.5,     -0.375,  -0.125,   0.5},      --  NodeBox6
			{0.375,    -0.375,   -0.5,     0.4375,  -0.125,   0.5},      --  NodeBox7
			{-0.375,   -0.375,   0.25,     0.375,   -0.3125,  0.375},    --  NodeBox8
			{-0.375,   -0.375,   0.0625,   0.375,   -0.3125,  0.1875},   --  NodeBox9
			{-0.375,   -0.375,   -0.125,   0.375,   -0.3125,  0},        --  NodeBox10
			{-0.375,   -0.375,   -0.3125,  0.375,   -0.3125,  -0.1875},  --  NodeBox11
			{-0.375,   -0.375,   -0.5,     0.375,   -0.3125,  -0.375},   --  NodeBox12
			{-0.375,   -0.3125,  -0.5,     0.375,   -0.0625,  0.4375},   --  NodeBox13
			{-0.3125,  -0.125,   0.0625,   0.3125,  0.0625,   0.4375},   --  NodeBox14
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { 0, 0, 0, 0, 0, 0 }
	}
})

local fdir_to_fwd = {
	{  0,  1 },
	{  1,  0 },
	{  0, -1 },
	{ -1,  0 },
}

minetest.register_node("homedecor:bed_blue_foot", {
	tiles = {
		"homedecor_bed_blue_top2.png",
		"homedecor_bed_bottom2.png",
		"homedecor_bed_blue_side2.png",
		"homedecor_bed_blue_side2.png^[transformFX",
		"homedecor_bed_blue_foot2.png",
		"homedecor_bed_blue_foot1.png"
	},
	inventory_image = "homedecor_bed_blue_inv.png",
	description = "Bed",
	drawtype = "nodebox",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {snappy=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,     -0.5,     -0.5,     -0.375,  0.1875,   -0.4375},  --  NodeBox1
			{0.375,    -0.5,     -0.5,     0.5,     0.1875,   -0.4375},  --  NodeBox2
			{-0.5,     0,        -0.5,     0.5,     0.125,    -0.4375},  --  NodeBox3
			{-0.5,     -0.375,   -0.5,     0.5,     -0.125,   -0.4375},  --  NodeBox4
			{-0.4375,  -0.375,   -0.5,     -0.375,  -0.125,   0.5},      --  NodeBox5
			{0.375,    -0.375,   -0.5,     0.4375,  -0.125,   0.5},      --  NodeBox6
			{-0.375,   -0.375,   0.3125,   0.375,   -0.3125,  0.4375},   --  NodeBox7
			{-0.375,   -0.375,   0.125,    0.375,   -0.3125,  0.25},     --  NodeBox8
			{-0.375,   -0.375,   -0.0625,  0.375,   -0.3125,  0.0625},   --  NodeBox9
			{-0.375,   -0.375,   -0.25,    0.375,   -0.3125,  -0.125},   --  NodeBox10
			{-0.375,   -0.375,   -0.4375,  0.375,   -0.3125,  -0.3125},  --  NodeBox11
			{-0.375,   -0.3125,  -0.4375,  0.375,   -0.0625,  0.5},      --  NodeBox12
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 1.5 }
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
			minetest.add_node(pos, { name = "homedecor:bed_blue_foot", param2 = fdir })
			minetest.add_node(pos2, { name = "homedecor:bed_blue_head", param2 = fdir })
			if not homedecor.expect_infinite_stacks then
				itemstack:take_item()
				return itemstack
			end
		end
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local fdir = oldnode.param2
		local pos2 = { x = pos.x + fdir_to_fwd[fdir+1][1], y=pos.y, z = pos.z + fdir_to_fwd[fdir+1][2] }
		if minetest.get_node(pos2).name == "homedecor:bed_blue_head" then
			minetest.remove_node(pos2)
		end
	end
})

minetest.register_node("homedecor:wardrobe_top", {
	tiles = {
		"homedecor_wardrobe_top.png",
		"homedecor_wardrobe_bottom.png",
		"homedecor_wardrobe_sides1.png",
		"homedecor_wardrobe_sides1.png^[transformFX",
		"homedecor_wardrobe_back1.png",
		"homedecor_wardrobe_frontt.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {snappy=3, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,     0.4375,   -0.4375,  0.5,      0.5,      0.5},      --  NodeBox1
			{-0.5,     -0.5,     -0.4375,  -0.4375,  0.5,      0.5},      --  NodeBox2
			{0.4375,   -0.5,     -0.4375,  0.5,      0.5,      0.5},      --  NodeBox3
			{-0.5,     -0.5,     0.4375,   0.5,      0.5,      0.5},      --  NodeBox4
			{-0.0625,  -0.4375,  -0.4375,  0.0625,   0.4375,   -0.375},   --  NodeBox6
			{0.0625,   -0.4375,  -0.5,     0.4375,   0.4375,   -0.4375},  --  NodeBox10
			{-0.5,     -0.5,     -0.4375,  0.5,      -0.4375,  0.5},      --  NodeBox11
			{-0.4375,  -0.4375,  -0.5,     -0.0625,  0.4375,   -0.4375},  --  NodeBox12
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { 0, 0, 0, 0, 0, 0 }
	},
})

minetest.register_node("homedecor:wardrobe_bottom", {
	tiles = {
		"homedecor_wardrobe_top.png",
		"homedecor_wardrobe_bottom.png",
		"homedecor_wardrobe_sides2.png",
		"homedecor_wardrobe_sides2.png^[transformFX",
		"homedecor_wardrobe_back2.png",
		"homedecor_wardrobe_frontb.png"
	},
	inventory_image = "homedecor_wardrobe_inv.png",
	description = "Wardrobe",
	drawtype = "nodebox",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {snappy=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,     -0.5,     -0.4375,  -0.4375,  0.5,      0.5},      --  NodeBox1
			{0.4375,   -0.5,     -0.4375,  0.5,      0.5,      0.5},      --  NodeBox2
			{-0.5,     -0.5,     -0.4375,  0.5,      -0.375,   -0.375},   --  NodeBox3
			{-0.4375,  -0.375,   -0.5,     0.4375,   -0.125,   -0.4375},  --  NodeBox4
			{-0.4375,  -0.125,   -0.4375,  0.4375,   -0.0625,  -0.375},   --  NodeBox12
			{-0.4375,  -0.0625,  -0.5,     0.4375,   0.1875,   -0.4375},  --  NodeBox13
			{-0.5,     0.1875,   -0.4375,  0.5,      0.25,     -0.375},   --  NodeBox14
			{-0.4375,  0.25,     -0.5,     0.4375,   0.5,      -0.4375},  --  NodeBox15
			{-0.5,     0.4375,   -0.4375,  0.5,      0.5,      0.5},      --  NodeBox16
			{-0.5,     -0.5,     0.4375,   0.5,      0.4375,   0.5},      --  NodeBox17
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, 1.5, 0.5 }
	},
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
			minetest.add_node(pos, { name = "homedecor:wardrobe_bottom", param2 = fdir })
			minetest.add_node(pos2, { name = "homedecor:wardrobe_top", param2 = fdir })
			if not homedecor.expect_infinite_stacks then
				itemstack:take_item()
				return itemstack
			end
		end
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local pos2 = { x = pos.x, y=pos.y + 1, z = pos.z }
		if minetest.get_node(pos2).name == "homedecor:wardrobe_top" then
			minetest.remove_node(pos2)
		end
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,8]"..
				"list[current_name;main;0,0;8,3;]"..
				"list[current_player;main;0,4;8,4;]")
		meta:set_string("infotext", S("Wardrobe cabinet"))
		local inv = meta:get_inventory()
		inv:set_size("main", 24)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", S("%s moves stuff in wardrobe at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", S("%s moves stuff to wardrobe at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", S("%s takes stuff from wardrobe at %s"):format(
		    player:get_player_name(),
		    minetest.pos_to_string(pos)
		))
	end,
})

-- Aliases for 3dforniture mod.

minetest.register_alias("3dforniture:table", "homedecor:table")
minetest.register_alias("3dforniture:chair", "homedecor:chair")
minetest.register_alias("3dforniture:armchair", "homedecor:armchair_black")
minetest.register_alias("homedecor:armchair", "homedecor:armchair_black")

minetest.register_alias('table', 'homedecor:table')
minetest.register_alias('chair', 'homedecor:chair')
minetest.register_alias('armchair', 'homedecor:armchair')
