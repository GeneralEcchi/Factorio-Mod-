for name, prototype in pairs(data.raw["unit-spawner"]) do
 prototype.dying_sound = {
        { filename = "__gore__/sound/deth-1.ogg", volume = 1 },
        { filename = "__gore__/sound/deth-2.ogg", volume = 1 },
        { filename = "__gore__/sound/deth-3.ogg", volume = 1 },
        { filename = "__gore__/sound/deth-4.ogg", volume = 1 }
      }
end

for name, prototype in pairs(data.raw["unit"]) do
prototype.dying_trigger_effect = prototype.dying_trigger_effect or {}
  table.insert(prototype.dying_trigger_effect, 
{
      type = "play-sound",
	sound= {
      	variations= 
	{
	{ filename = "__gore__/sound/Udeth-1.ogg", volume = 0.5, },
	{ filename = "__gore__/sound/Udeth-2.ogg", volume = 0.52, },
	{ filename = "__gore__/sound/Udeth-3.ogg", volume = 0.54, },
	{ filename = "__gore__/sound/Udeth-4.ogg", volume = 0.56, },
	{ filename = "__gore__/sound/Udeth-5.ogg", volume = 0.58, },
	{ filename = "__gore__/sound/Udeth-6.ogg", volume = 0.6, },
	},
	aggregation =
		{
			max_count = 4,
			remove = true,
			count_already_playing = false
		}
	}
})
end

for name, prototype in pairs(data.raw["turret"]) do
prototype.dying_trigger_effect = prototype.dying_trigger_effect or {}
  table.insert(prototype.dying_trigger_effect, 
{
        type = "create-particle",
        repeat_count = 5,
        repeat_count_deviation = 10,
        probability = 0.5,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "blood-particle",
        offsets =
        {
          { 0.07813, 0.1094 },
          { 0, -0.5703 }
        },
        offset_deviation = { { -0.1992, -1 }, { 0.1992, 1 } },
        tile_collision_mask = nil,
        initial_height = 1,
        initial_height_deviation = 1,
        initial_vertical_speed = 0.042,
        initial_vertical_speed_deviation = 0.25,
        speed_from_center = 0.042,
        speed_from_center_deviation = 0.25,
        frame_speed = 1,
        frame_speed_deviation = 0.02,
        tail_length = 20,
        tail_length_deviation = 70,
        tail_width = 1
},
table.insert(prototype.dying_trigger_effect, {
        type = "create-particle",
        repeat_count = 3,
        repeat_count_deviation = 4,
        probability = 0.25,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "guts-entrails-particle-big",
        offsets =
        {
          { 0, 0 }
        },
        offset_deviation = { { -0.77, -0.77 }, { 0.77, 0.77 } },
        tile_collision_mask = nil,
        initial_height = 0.2,
        initial_height_deviation = 0.4,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.3,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.3,
        frame_speed = 1,
        frame_speed_deviation = 1,
        tail_length = 4,
        tail_length_deviation = 2,
        tail_width = 3
},
  table.insert(prototype.dying_trigger_effect, {
        type = "create-particle",
        repeat_count = 3,
        repeat_count_deviation = 9,
        probability = 0.42,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "guts-entrails-particle-small-medium",
        offsets =
        {
          { 0, 0 }
        },
        offset_deviation = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        tile_collision_mask = nil,
        initial_height = 0.4,
        initial_height_deviation = 0.4,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.25,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.3,
        frame_speed = 1,
        frame_speed_deviation = 0.955,
        tail_length = 3,
        tail_length_deviation = 3,
        tail_width = 6
})))
end

for name, prototype in pairs(data.raw["unit"]) do
  table.insert(prototype.dying_trigger_effect, 
{
        type = "create-particle",
        repeat_count = 5,
        repeat_count_deviation = 10,
        probability = 0.5,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "blood-particle",
        offsets =
        {
          { 0.07813, 0.1094 },
          { 0, -0.5703 }
        },
        offset_deviation = { { -0.1992, -1 }, { 0.1992, 1 } },
        tile_collision_mask = nil,
        initial_height = 1,
        initial_height_deviation = 1,
        initial_vertical_speed = 0.036,
        initial_vertical_speed_deviation = 0.08,
        speed_from_center = 0.08,
        speed_from_center_deviation = 0.25,
        frame_speed = 1,
        frame_speed_deviation = 0.02,
        tail_length = 20,
        tail_length_deviation = 70,
        tail_width = 1
},
table.insert(prototype.dying_trigger_effect, {
        type = "create-particle",
        repeat_count = 3,
        repeat_count_deviation = 4,
        probability = 0.25,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "guts-entrails-particle-big",
        offsets =
        {
          { 0, 0 }
        },
        offset_deviation = { { -0.77, -0.77 }, { 0.77, 0.77 } },
        tile_collision_mask = nil,
        initial_height = 0.2,
        initial_height_deviation = 0.4,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.3,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.3,
        frame_speed = 1,
        frame_speed_deviation = 1,
        tail_length = 4,
        tail_length_deviation = 2,
        tail_width = 3
},
  table.insert(prototype.dying_trigger_effect, {
        type = "create-particle",
        repeat_count = 3,
        repeat_count_deviation = 4,
        probability = 0.42,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "guts-entrails-particle-small-medium",
        offsets =
        {
          { 0, 0 }
        },
        offset_deviation = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        tile_collision_mask = nil,
        initial_height = 0.4,
        initial_height_deviation = 0.4,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.25,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.3,
        frame_speed = 1,
        frame_speed_deviation = 0.955,
        tail_length = 3,
        tail_length_deviation = 3,
        tail_width = 6
})))
end


for name, prototype in pairs(data.raw["unit-spawner"]) do
prototype.dying_trigger_effect = prototype.dying_trigger_effect or {}
	--for i=1,6 do
	table.insert(prototype.dying_trigger_effect, {
            type = "create-entity",
            entity_name = "blood-explosion-small", -- ..i,
            repeat_count = 1,
			repeat_count_deviation = 2,
			probability = 0.5,
			offsets ={{ 0.45, 0.66 },{ -0.5, -0.64 }},
			offset_deviation = { { -0.8, -1.5 }, { 0.69, 1.6 } }
		},
  table.insert(prototype.dying_trigger_effect, {
         type = "create-particle",
        repeat_count = 12,
        repeat_count_deviation = 12,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "blood-particle",
        offsets =
        {
          { -0.15, -0.55 }
        },
        offset_deviation = { { -0.75, -1.5 }, { 0.75, 1.5 } },
        tile_collision_mask = nil,
        initial_height = 0.4,
        initial_height_deviation = 0.4,
        initial_vertical_speed = 0.025,
        initial_vertical_speed_deviation = 0.1,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.3,
        frame_speed = 1,
        frame_speed_deviation = 0.02,
        tail_length = 16,
        tail_length_deviation = 60,
        tail_width = 8
},
 table.insert(prototype.dying_trigger_effect,{
        type = "create-particle",
        repeat_count = 6,
        repeat_count_deviation = 2,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "blood-particle",
        offsets =
        {
          { -0.07813, -0.6953 },
          { -0.125, -1.289 }
        },
        offset_deviation = { { -0.1992, -1 }, { 0.1992, 1 } },
        tile_collision_mask = nil,
        initial_height = 2.3,
        initial_height_deviation = 0,
        initial_vertical_speed = 0.067,
        initial_vertical_speed_deviation = 0.07,
        speed_from_center = 0.16,
        speed_from_center_deviation = 0.16,
        frame_speed = 1,
        frame_speed_deviation = 0.02,
        tail_length = 30,
        tail_length_deviation = 100,
        tail_width = 2
      },
 table.insert(prototype.dying_trigger_effect, {
         type = "create-particle",
        repeat_count = 8,
        repeat_count_deviation = 12,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "blood-particle",
       offsets =
        {
          { -0.08, -0.42 }
        },
        offset_deviation = { { -0.5, -0.75 }, { 0.5, 0.75 } },
        tile_collision_mask = nil,
        initial_height = 0.2,
        initial_height_deviation = 0.05,
        initial_vertical_speed = 0.090,
        initial_vertical_speed_deviation = 0.05,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.25,
        frame_speed = 1,
        frame_speed_deviation = 0,
        tail_length = 50,
        tail_length_deviation = 50,
        tail_width = 1
},
  table.insert(prototype.dying_trigger_effect, {
        type = "create-particle",
        repeat_count = 6,
        repeat_count_deviation = 12,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "guts-entrails-particle-small-medium",
        offsets =
        {
          { 0, 0 }
        },
        offset_deviation = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        tile_collision_mask = nil,
        initial_height = 0.4,
        initial_height_deviation = 0.8,
        initial_vertical_speed = 0.12,
        initial_vertical_speed_deviation = 0.25,
        speed_from_center = 0.2,
        speed_from_center_deviation = 0.4,
        frame_speed = 1,
        frame_speed_deviation = 0.955,
        tail_length = 3,
        tail_length_deviation = 2,
        tail_width = 3
},
table.insert(prototype.dying_trigger_effect, {
        type = "create-particle",
        repeat_count = 8,
        repeat_count_deviation = 16,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "guts-entrails-particle-big",
        offsets =
        {
          { -0.1, -1.5 }
        },
        offset_deviation = { { -0.75, -1.25 }, { 0.75, 1.25 } },
        tile_collision_mask = nil,
        initial_height = 0.4,
        initial_height_deviation = 0.4,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.1,
        speed_from_center = 0.08,
        speed_from_center_deviation = 0.35,
        frame_speed = 1,
        frame_speed_deviation = 1,
        tail_length = 8,
        tail_length_deviation = 6,
        tail_width = 3
}))))))
end

for name, prototype in pairs(data.raw["tree"]) do
prototype.dying_trigger_effect = prototype.dying_trigger_effect or {}

table.insert(prototype.dying_trigger_effect, 
			{
            type = "create-particle",
            repeat_count = 6,
			repeat_count_deviation = 6,
            particle_name = "wooden-chest-wooden-splinter-particle-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
table.insert(prototype.dying_trigger_effect,
          {
            type = "create-particle",
            repeat_count = 8,
			repeat_count_deviation = 6,
            particle_name = "transport-belt-wooden-splinter-particle-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.75,
            initial_height_deviation = 0.44,
            initial_vertical_speed = 0.05,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.1,
            speed_from_center_deviation = 0.15
          },
table.insert(prototype.dying_trigger_effect,
		{
            type = "play-sound",
			sound= 
			{
			variations= 
			{
			{ filename = "__gore__/sound/treebreak-1.ogg", volume = 0.6, },
			{ filename = "__gore__/sound/treebreak-2.ogg", volume = 0.61, },
			{ filename = "__gore__/sound/treebreak-3.ogg", volume = 0.62, },
			{ filename = "__gore__/sound/treebreak-4.ogg", volume = 0.63, }
			},
			aggregation =
			{
			max_count = 4,
			remove = true,
			count_already_playing = false
			}
			}
		},
table.insert(prototype.dying_trigger_effect,
		{
            type = "create-entity",
            entity_name = "cluster-nuke-explosion",
			probability = 1,
            repeat_count = 1
		},
		table.insert(prototype.dying_trigger_effect,
		{
            type = "create-entity",
            entity_name = "cluster-nuke-explosion",
			probability = 0.5,
            repeat_count = 1,
			initial_height = 0.5,
            initial_height_deviation = 1
		}
	)))))
end

for name, prototype in pairs(data.raw["simple-entity"]) do
prototype.dying_trigger_effect = prototype.dying_trigger_effect or {}
		table.insert(prototype.dying_trigger_effect,
			{
            type = "create-particle",
            repeat_count = 12,
			repeat_count_deviation = 12,
            particle_name = "stone-furnace-stone-particle-big",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.35,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
		table.insert(prototype.dying_trigger_effect,
		  {
            type = "create-particle",
            repeat_count = 12,
			repeat_count_deviation = 12,
            particle_name = "explosion-stone-particle-medium",
            offset_deviation = { { -0.6914, -0.6875 }, { 0.6914, 0.6875 } },
            initial_height = 0.1,
            initial_height_deviation = 0.36,
            initial_vertical_speed = 0.078,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
		table.insert(prototype.dying_trigger_effect,
		{
            type = "create-particle",
            repeat_count = 6,
            particle_name = "explosion-stone-particle-medium",
            initial_height = 0.5,
            speed_from_center = 0.1,
            speed_from_center_deviation = 0.35,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
          },
		table.insert(prototype.dying_trigger_effect,
		{
            type = "play-sound",
			sound= 
			{
			variations= 
			{
			{ filename = "__gore__/sound/rockbreak-1.ogg", volume = 0.55, },
			{ filename = "__gore__/sound/rockbreak-2.ogg", volume = 0.6, },
			{ filename = "__gore__/sound/rockbreak-3.ogg", volume = 0.65, },
			{ filename = "__gore__/sound/rockbreak-4.ogg", volume = 0.65, }
			},
			aggregation =
			{
			max_count = 4,
			remove = true,
			count_already_playing = false
			}
			}
		},
		table.insert(prototype.dying_trigger_effect,
		{
            type = "create-entity",
            entity_name = "cluster-nuke-explosion",
			probability = 1,
            repeat_count = 2,
			repeat_count_deviation = 5,
			offsets ={{ -0.3, 0.5 }},
			offset_deviation = { { -0.75, -1.5 }, { 0.69, 1.3 } }
		},
		table.insert(prototype.dying_trigger_effect,
		{
            type = "create-entity",
            entity_name = "cluster-nuke-explosion",
			probability = 1,
            repeat_count = 2,
			repeat_count_deviation = 5,
			offsets ={{ 0.45, 0.66 },{ -0.5, -0.64 }},
			offset_deviation = { { -0.8, -1.5 }, { 0.69, 1.6 } }
		}
	))))))
end

for name, prototype in pairs(data.raw["simple-entity"]) do
prototype.damaged_trigger_effect = prototype.damaged_trigger_effect or {}
table.insert(prototype.damaged_trigger_effect,
		{
            type = "create-particle",
            repeat_count = 4,
			repeat_count_deviation = 8,
            particle_name = "explosion-stone-particle-medium",
            initial_height = 0.5,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.06,
            initial_vertical_speed = 0.05,
            initial_vertical_speed_deviation = 0.05,
            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
        }
	)
end

local as_an_action = {
    type = "instant",
    target_effects = {
	{
    type = "create-particle",
		repeat_count = 3,
		repeat_count_deviation = 4,
		probability = 1,
		particle_name = "stone-furnace-stone-particle-big",
		initial_height = 0.5,
		speed_from_center = 0.08,
		speed_from_center_deviation = 0.1,
		initial_vertical_speed = 0.08,
		initial_vertical_speed_deviation = 0.15,
		offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } }
	},
	{
	type = "create-particle",
        repeat_count = 6,
		repeat_count_deviation = 8,
		probability = 1,
		particle_name = "spark-particle",
		offset_deviation = { { -0.1, -0.25 }, { 0.15, 0.2 } },
		initial_height = 0.5,
		initial_height_deviation = 1.5,
		initial_vertical_speed = 0.025,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.12,
		speed_from_center_deviation = 0.33,
		frame_speed = 0.05,
        frame_speed_deviation = 0,
        tail_length = 35,
        tail_length_deviation = 35,
        tail_width = 2
    },
	{
    type = "create-particle",
		repeat_count = 12,
		repeat_count_deviation = 12,
		probability = 1,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		initial_height = 0.25,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.075,
		initial_vertical_speed_deviation = 0.15,
		speed_from_center = 0.075,
		speed_from_center_deviation = 0.25
    }
}}

local action_and_effect_thing = {
    type = "direct",
    action_delivery =
    {
        table.deepcopy(as_an_action)
    }
}

local prototype = data.raw.explosion["big-explosion"]
prototype.created_effect = table.deepcopy(action_and_effect_thing)

local prototype = data.raw.explosion["kr-laser-explosion"]
prototype.created_effect = table.deepcopy(action_and_effect_thing)

local spark_vfx = {
    type = "instant",
    target_effects = {
	{
    type = "create-particle",
        repeat_count = 2,
		repeat_count_deviation = 4,
		probability = 0.25,
		particle_name = "destroyer-robot-metal-particle-small",
		offset_deviation = { { -0.5938, -0.5977 }, { 0.5938, 0.5977 } },
		initial_height = 1.4,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.082,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.03,
		speed_from_center_deviation = 0.05
    },
	{
	type = "create-particle",
        repeat_count = 6,
		repeat_count_deviation = 8,
		probability = 1,
		particle_name = "spark-particle",
		offset_deviation = { { -0.1, -0.25 }, { 0.15, 0.2 } },
		initial_height = 0.5,
		initial_height_deviation = 0.75,
		initial_vertical_speed = 0.025,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.08,
		speed_from_center_deviation = 0.25,
		frame_speed = 0.25,
        frame_speed_deviation = 0,
        tail_length = 25,
        tail_length_deviation = 25,
        tail_width = 2
    },
	{
    type = "create-particle",
		repeat_count = 2,
		repeat_count_deviation = 4,
		probability = 0.5,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		initial_height = 0.07,
		initial_height_deviation = 0.1,
		initial_vertical_speed = 0.025,
		initial_vertical_speed_deviation = 0.1,
		speed_from_center = 0.05,
		speed_from_center_deviation = 0.1
    },
	{
            type = "create-entity",
            entity_name = "cluster-nuke-explosion",
			probability = 0.25,
            repeat_count = 1
    }
}
}

local spark_impact_one = {
    type = "direct",
    action_delivery =
    {
        table.deepcopy(spark_vfx)
    }
}

local prototype = data.raw.explosion["explosion-hit"]
prototype.created_effect = table.deepcopy(spark_impact_one)

local prototype = data.raw.explosion["explosion-hit-u"]
prototype.created_effect = table.deepcopy(spark_impact_one)

local prototype = data.raw.explosion["explosion-hit-i"]
prototype.created_effect = table.deepcopy(spark_impact_one)

local prototype = data.raw.explosion["explosion-hit-p"]
prototype.created_effect = table.deepcopy(spark_impact_one)


local art_exp = {
    type = "instant",
    target_effects = {
	{
    type = "create-particle",
		repeat_count = 12,
		repeat_count_deviation = 21,
		probability = 1,
		particle_name = "stone-furnace-stone-particle-big",
		initial_height = 0.5,
		speed_from_center = 0.1,
		speed_from_center_deviation = 0.25,
		initial_vertical_speed = 0.1,
		initial_vertical_speed_deviation = 0.2,
		offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } }
	},
	{
    type = "create-particle",
		repeat_count = 30,
		repeat_count_deviation = 30,
		probability = 1,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		initial_height = 0.5,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.06,
		initial_vertical_speed_deviation = 0.15,
		speed_from_center = 0.04,
		speed_from_center_deviation = 0.42
    },
	{
	type = "create-particle",
		repeat_count = 10,
		repeat_count_deviation = 10,
		particle_name = "locomotive-metal-particle-big",
		offset_deviation = { { -0.5938, -0.7969 }, { 0.5938, 0.7969 } },
		initial_height = 0.4,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.101,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.05,
		speed_from_center_deviation = 0.15
    }
}}

local art_exp_lv2= {
    type = "direct",
    action_delivery =
    {
        table.deepcopy(art_exp)
    }
}

local prototype = data.raw.explosion["big-artillery-explosion"]
prototype.created_effect = table.deepcopy(art_exp_lv2)

local med_exp_lv1 = {
    type = "instant",
    target_effects = {
	{
            type = "create-entity",
            entity_name = "big-explosion",
            repeat_count = 1
    },
	{
    type = "create-particle",
		repeat_count = 3,
		repeat_count_deviation = 4,
		probability = 0.42,
		particle_name = "stone-furnace-stone-particle-big",
		initial_height = 0.5,
		speed_from_center = 0.08,
		speed_from_center_deviation = 0.1,
		initial_vertical_speed = 0.08,
		initial_vertical_speed_deviation = 0.15,
		offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } }
	},
	{
	type = "create-particle",
        repeat_count = 15,
		repeat_count_deviation = 10,
		probability = 1,
		particle_name = "spark-particle",
		offset_deviation = { { -1.5, -2 }, { 1.5, 2 } },
		initial_height = 1,
		initial_height_deviation = 2,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.1,
		speed_from_center = 0.1,
		speed_from_center_deviation = 0.2,
		frame_speed = 0.025,
        frame_speed_deviation = 0,
        tail_length = 64,
        tail_length_deviation = 69,
        tail_width = 9
    },
	{
	type = "create-particle",
        repeat_count = 20,
		repeat_count_deviation = 5,
		probability = 1,
		particle_name = "spark-particle",
		offset_deviation = { { -0.5, -1.25 }, { 0.5, 1.25 } },
		initial_height = 1,
		initial_height_deviation = 1,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.1,
		speed_from_center = 0.08,
		speed_from_center_deviation = 0.1,
		frame_speed = 0.75,
        frame_speed_deviation = 0,
        tail_length = 42,
        tail_length_deviation = 69,
        tail_width = 2
    },
	{
    type = "create-particle",
		repeat_count = 10,
		repeat_count_deviation = 20,
		probability = 1,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		initial_height = 0.25,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.075,
		initial_vertical_speed_deviation = 0.15,
		speed_from_center = 0.075,
		speed_from_center_deviation = 0.25
    }
}}

local med_exp_lv2= {
    type = "direct",
    action_delivery =
    {
        table.deepcopy(med_exp_lv1)
    }
}

local prototype = data.raw.explosion["medium-explosion"]
prototype.created_effect = table.deepcopy(med_exp_lv2)

-- Grenade (normal)
	data.raw["projectile"]["grenade"].action =
    {
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "create-entity",
						entity_name = "big-explosion"
					},
					{
						type = "show-explosion-on-chart",
						scale = 0.5
					},
					{
						type = "create-entity",
						entity_name = "small-scorchmark",
						check_buildability = false
					}
				}
			}
		},
		{
			type = "area",
			radius = 10,
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = {amount = 100, type = "explosion"}
					},
					{
						type = "create-entity",
						entity_name = "explosion"
					}
				}
			}
		}
    }

if data.raw["explosion"]["kr-laser-explosion"] then
	data.raw["explosion"]["kr-laser-explosion"].sound = {
	variations = {
	{ filename = "__gore__/sound/weapons/exp-lsr-1.ogg", volume = 0.77 },
	{ filename = "__gore__/sound/weapons/exp-lsr-2.ogg", volume = 0.77 },
	{ filename = "__gore__/sound/weapons/exp-lsr-3.ogg", volume = 0.77 },
	{ filename = "__gore__/sound/weapons/exp-lsr-4.ogg", volume = 0.77 },
	{ filename = "__gore__/sound/weapons/exp-lsr-5.ogg", volume = 0.77 },
	{ filename = "__gore__/sound/weapons/exp-lsr-6.ogg", volume = 0.77 }
	},
	aggregation =
    {
      max_count = 2,
      remove = true
    },
    audible_distance_modifier = 1.95,
	}
end


-------------------------------------------------------------------------
-------------------------------------------------------------------------
require("wep")

table.insert(data.raw["technology"]["advanced-electronics-2"].effects, 
{type = "unlock-recipe", recipe ="plasma-rifle"}
)
table.insert(data.raw["technology"]["advanced-electronics-2"].effects, 
{type = "unlock-recipe", recipe ="plasma-rounds"}
)
table.insert(data.raw["technology"]["military-3"].effects, 
{type = "unlock-recipe", recipe ="plasma-grenade"}
)

table.insert(data.raw["technology"]["nuclear-power"].effects, 
{type = "unlock-recipe", recipe ="radio-blaster"}
)
table.insert(data.raw["technology"]["nuclear-power"].effects, 
{type = "unlock-recipe", recipe ="radio-rounds"}
)

table.insert(data.raw["technology"]["uranium-ammo"].effects, 
{type = "unlock-recipe", recipe ="radio-shells"}
)

--------------------------------------------------------------------------

table.insert(data.raw["technology"]["energy-weapons-damage-1"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.3}
)
table.insert(data.raw["technology"]["energy-weapons-damage-2"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.28}
)
table.insert(data.raw["technology"]["energy-weapons-damage-3"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.26}
)
table.insert(data.raw["technology"]["energy-weapons-damage-4"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.24}
)
table.insert(data.raw["technology"]["energy-weapons-damage-5"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.22}
)
table.insert(data.raw["technology"]["energy-weapons-damage-6"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.2}
)
table.insert(data.raw["technology"]["energy-weapons-damage-7"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.18}
)
table.insert(data.raw["technology"]["energy-weapons-damage-11"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.15}
)
table.insert(data.raw["technology"]["energy-weapons-damage-16"].effects, 
{type = "ammo-damage", ammo_category = "plasma-rounds", modifier = 0.1}
)

------------------------------------------------------------------------
------------------------------------------------------------------------

table.insert(data.raw["technology"]["energy-weapons-damage-1"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.3}
)
table.insert(data.raw["technology"]["energy-weapons-damage-2"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.28}
)
table.insert(data.raw["technology"]["energy-weapons-damage-3"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.26}
)
table.insert(data.raw["technology"]["energy-weapons-damage-4"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.24}
)
table.insert(data.raw["technology"]["energy-weapons-damage-5"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.22}
)
table.insert(data.raw["technology"]["energy-weapons-damage-6"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.2}
)
table.insert(data.raw["technology"]["energy-weapons-damage-7"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.18}
)
table.insert(data.raw["technology"]["energy-weapons-damage-11"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.15}
)
table.insert(data.raw["technology"]["energy-weapons-damage-16"].effects, 
{type = "ammo-damage", ammo_category = "radioactive-rounds", modifier = 0.1}
)

------------------------------------------------------------------------
------------------------------------------------------------------------

table.insert(data.raw["technology"]["laser-shooting-speed-1"].effects, 
{type = "gun-speed", ammo_category = "plasma-rounds", modifier = 0.25}
)
table.insert(data.raw["technology"]["laser-shooting-speed-2"].effects, 
{type = "gun-speed", ammo_category = "plasma-rounds", modifier = 0.24}
)
table.insert(data.raw["technology"]["laser-shooting-speed-3"].effects, 
{type = "gun-speed", ammo_category = "plasma-rounds", modifier = 0.23}
)
table.insert(data.raw["technology"]["laser-shooting-speed-4"].effects, 
{type = "gun-speed", ammo_category = "plasma-rounds", modifier = 0.22}
)
table.insert(data.raw["technology"]["laser-shooting-speed-5"].effects, 
{type = "gun-speed", ammo_category = "plasma-rounds", modifier = 0.21}
)
table.insert(data.raw["technology"]["laser-shooting-speed-6"].effects, 
{type = "gun-speed", ammo_category = "plasma-rounds", modifier = 0.2}
)
table.insert(data.raw["technology"]["laser-shooting-speed-7"].effects, 
{type = "gun-speed", ammo_category = "plasma-rounds", modifier = 0.2}
)

------------------------------------------------------------------------
------------------------------------------------------------------------

table.insert(data.raw["technology"]["laser-shooting-speed-1"].effects, 
{type = "gun-speed", ammo_category = "radioactive-rounds", modifier = 0.22}
)
table.insert(data.raw["technology"]["laser-shooting-speed-2"].effects, 
{type = "gun-speed", ammo_category = "radioactive-rounds", modifier = 0.2}
)
table.insert(data.raw["technology"]["laser-shooting-speed-3"].effects, 
{type = "gun-speed", ammo_category = "radioactive-rounds", modifier = 0.18}
)
table.insert(data.raw["technology"]["laser-shooting-speed-4"].effects, 
{type = "gun-speed", ammo_category = "radioactive-rounds", modifier = 0.16}
)
table.insert(data.raw["technology"]["laser-shooting-speed-5"].effects, 
{type = "gun-speed", ammo_category = "radioactive-rounds", modifier = 0.14}
)
table.insert(data.raw["technology"]["laser-shooting-speed-6"].effects, 
{type = "gun-speed", ammo_category = "radioactive-rounds", modifier = 0.12}
)
table.insert(data.raw["technology"]["laser-shooting-speed-7"].effects, 
{type = "gun-speed", ammo_category = "radioactive-rounds", modifier = 0.1}
)