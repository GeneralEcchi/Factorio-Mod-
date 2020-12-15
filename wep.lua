local plasma_rifle_sound =
{
	variations =
	{
		{ filename = "__gore__/sound/weapons/plasma-rifle-1.ogg", volume = 0.37},
		{ filename = "__gore__/sound/weapons/plasma-rifle-2.ogg", volume = 0.36},
		{ filename = "__gore__/sound/weapons/plasma-rifle-3.ogg", volume = 0.38}
	},
	aggregation =
	{
		max_count = 3,
		remove = true,
		count_already_playing = true
	}
}

local radio_blaster_sound =
{
	variations =
	{
		{ filename = "__gore__/sound/weapons/blaster-1.ogg", volume = 0.5},
		{ filename = "__gore__/sound/weapons/blaster-2.ogg", volume = 0.5},
		{ filename = "__gore__/sound/weapons/blaster-3.ogg", volume = 0.5}
	},
	aggregation =
	{
		max_count = 2,
		remove = true,
		count_already_playing = true
	}
}

local swarm_blaster_sound =
{
	variations =
	{
		{ filename = "__gore__/sound/weapons/s_blaster-1.ogg", volume = 0.4},
		{ filename = "__gore__/sound/weapons/s_blaster-2.ogg", volume = 0.4},
		{ filename = "__gore__/sound/weapons/s_blaster-3.ogg", volume = 0.4}
	},
	aggregation =
	{
		max_count = 6,
		remove = true,
		count_already_playing = true
	}
}

local med_explosion_sound =
{
variations = {
	{ filename = "__gore__/sound/weapons/exp-big-1.ogg", volume = 0.8 },
	{ filename = "__gore__/sound/weapons/exp-big-2.ogg", volume = 0.8 },
	{ filename = "__gore__/sound/weapons/exp-big-3.ogg", volume = 0.8 },
	{ filename = "__gore__/sound/weapons/exp-big-4.ogg", volume = 0.8 },
	{ filename = "__gore__/sound/weapons/exp-big-5.ogg", volume = 0.8 },
	{ filename = "__gore__/sound/weapons/exp-big-6.ogg", volume = 0.8 }
	},
	aggregation =
    {
      max_count = 2,
      remove = true
    },
    audible_distance_modifier = 1.95,
}

local electric_arc_sound =
{
	variations =
	{
		{ filename = "__gore__/sound/weapons/zap-1.ogg", volume = 0.5},
		{ filename = "__gore__/sound/weapons/zap-2.ogg", volume = 0.5},
		{ filename = "__gore__/sound/weapons/zap-3.ogg", volume = 0.5},
		{ filename = "__gore__/sound/weapons/zap-4.ogg", volume = 0.5},
		{ filename = "__gore__/sound/weapons/zap-5.ogg", volume = 0.5},
		{ filename = "__gore__/sound/weapons/zap-6.ogg", volume = 0.5}
	},
	aggregation =
	{
		max_count = 2,
		remove = true,
		count_already_playing = true
	},
	audible_distance_modifier = 1.35,
}


------------------------------------------------

data.raw["ammo-category"]["plasma-rounds"] = 
{
	bonus_gui_order = "k",
	type = "ammo-category",
	name = "plasma-rounds"
}
data.raw["ammo-category"]["radioactive-rounds"] = 
{
	bonus_gui_order = "k",
	type = "ammo-category",
	name = "radioactive-rounds"
}
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------- 420 ITEMS ----------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

data:extend(
{
	{
		type = "gun",
		name = "plasma-rifle",
		icon = "__gore__/graphics/weapons/plasma-rifle.png",
		icon_size = 64, icon_mipmaps = 1,
		subgroup = "gun",
		order = "c3[plasma-rifle]",
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "plasma-rounds",
			cooldown = 21,
			movement_slow_down_factor = 0.1,
			projectile_creation_distance = 0.7,
			fire_penalty = 0,
			range = 30,
			sound = plasma_rifle_sound
		},
		stack_size = 1
	},
	
	{
		type = "gun",
		name = "radio-blaster",
		icon = "__gore__/graphics/weapons/radio-blaster.png",
		icon_size = 64, icon_mipmaps = 1,
		subgroup = "gun",
		order = "c3[plasma-rifle]",
		attack_parameters =
		{	
			type = "projectile",
			ammo_category = "radioactive-rounds",
			cooldown = 42,
			movement_slow_down_factor = 0.1,
			projectile_creation_distance = 0.1,
			fire_penalty = 1,
			range = 60,
			sound = radio_blaster_sound 
		},
		stack_size = 1
	},
	
	{
		type = "gun",
		name = "swarm-blaster",
		icon = "__gore__/graphics/weapons/swarm-blaster.png",
		icon_size = 64, icon_mipmaps = 1,
		subgroup = "gun",
		order = "c3[firefly-chamber]",
		attack_parameters =
		{	
			type = "projectile",
			ammo_category = "flamethrower",
			cooldown = 5,
			movement_slow_down_factor = 0.15,
			projectile_creation_distance = 0.1,
			fire_penalty = 0,
			range = 60,
			sound = swarm_blaster_sound 
		},
		stack_size = 1
	},
	
----------------------------------------------------------------------------------

	{
		type = "capsule",
		name = "plasma-grenade",
		description = "grenade",
		icon = "__gore__/graphics/weapons/plasma-grenade.png",
		icon_size = 64,
		icon_mipmaps = 1,
		pictures =
		{
			layers =
			{
				{
					size = 64,
					filename = "__gore__/graphics/weapons/plasma-grenade.png",
					scale = 0.25,
					mipmap_count = 1
				},
				{
					draw_as_light = true,
					flags = {"light"},
					size = 64,
					filename = "__gore__/graphics/weapons/plasma-grenade-light.png",
					scale = 0.25,
					mipmap_count = 1
				}
			}
		},
		capsule_action =
		{
		  type = "throw",
		  attack_parameters =
		  {
			type = "projectile",
			activation_type = "throw",
			ammo_category = "grenade",
			cooldown = 42,
			projectile_creation_distance = 0.6,
			range = 30,
			ammo_type =
			{
			  category = "grenade",
			  target_type = "position",
			  action =
			  {
				type = "direct",
				action_delivery =
				{
				  type = "projectile",
				  projectile = "plasma-grenade",
				  starting_speed = 0.42
				}
			  }
			}
		  }
		},
		subgroup = "capsule",
		order = "b12[plasma-grenade]",
		stack_size = 100
	},
	
----------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------- AMMUNITIONS 556 --------------------------------------------------------------------	
----------------------------------------------------------------------------------------------------------------------------------------------

	{
		type = "ammo",
		name = "radio-shells",
		description = "shotgun-shell",
		icon = "__gore__/graphics/weapons/radio-shells.png",
		icon_size = 64,
		icon_mipmaps = 4,
		ammo_type = 
		{
			category = "shotgun-shell",
			target_type = "direction",
			clamp_position = true,
			action =
			{
				{	type = "direct",
					action_delivery =
					{
						{
						type = "instant",
						source_effects =
							{
							type = "create-explosion",
							entity_name = "radio-impact"
							}
						}
					}
				},
				{	type = "direct",
					repeat_count = 12,
					action_delivery =
					{
						{
						type = "projectile",
						projectile = "radio-pellet",
						starting_speed = 0.85,
						direction_deviation = 0.5,
						range_deviation = 0.1,
						max_range = 36,
						}
					}	
				}
			}
		},
		magazine_size = 12,
		subgroup = "ammo",
		order = "c1[shotgun-radio]",
		stack_size = 100
	},
	
------------------------------------------------------------------------

	{
		type = "ammo",
		name = "plasma-rounds",
		description = "plasma-rounds",
		icon = "__gore__/graphics/weapons/plasma-rounds.png",
		icon_size = 64,
		icon_mipmaps = 4,
		ammo_type =
		{
			category = "plasma-rounds",
			target_type = "position",
			clamp_position = true,
			action =
			{
				{	
				type = "direct",
					action_delivery =
					{
					{
					type = "instant",
					source_effects =
						{
						type = "create-explosion",
						entity_name = "plasma-impact"
						}
					}
					}
				},
				{
				type = "direct",
					action_delivery =
					{
					{
					type = "projectile",
					projectile = "plasma-projectile",
					starting_speed = 1.3,
					direction_deviation = 0.15,
					range_deviation = 0.3,
					max_range = 42,
					}
					}
				}
			}
		},
		magazine_size = 12,
		subgroup = "ammo",
		order = "c[plasma-rounds]",
		stack_size = 150
    },
	
----------------------------------------------------------------

{
		type = "ammo",
		name = "firefly-chamber",
		description = "firefly-chamber",
		icon = "__gore__/graphics/weapons/firefly-chamber.png",
		icon_size = 64,
		icon_mipmaps = 4,
		ammo_type =
		{
			category = "flamethrower",
			target_type = "direction",
			clamp_position = true,
			action =
			{
				{	
				type = "direct",
					action_delivery =
					{
						source_effects =
						{
						type = "create-entity",
						entity_name = "explosion-hit"
						}
					}
				},
				{
					type = "direct",
					repeat_count = 3,
					action_delivery =
					{
					{
					type = "projectile",
					projectile = "firefly",
					starting_speed = 1,
					direction_deviation = 0.5,
					range_deviation = 0.3,
					max_range = 60,
					}
					}
				}
			}
		},
		magazine_size = 30,
		subgroup = "ammo",
		order = "c12[firefly-chamber]",
		stack_size = 300
    },	
	
--------------------------------------------------------------

	{
		type = "ammo",
		name = "radio-rounds",
		description = "radio-rounds",
		icon = "__gore__/graphics/weapons/radio-rounds.png",
		icon_size = 64,
		icon_mipmaps = 4,
		ammo_type =
		{
			category = "radioactive-rounds",
			target_type = "position",
			clamp_position = true,
			action =
			{
				{	type = "direct",
					action_delivery =
					{
						{
						type = "instant",
						source_effects =
							{
							type = "create-explosion",
							entity_name = "radio-impact"
							}
						}
					}
				},
				{
				type = "direct",
				action_delivery =
				{
					
					type = "projectile",
					projectile = "radio-projectile",
					starting_speed = 3,
					direction_deviation = 0.05,
					range_deviation = 0,
					max_range = 30,
					
				}
				}
			}
		},
		magazine_size = 12,
		subgroup = "ammo",
		order = "c[radio-rounds]",
		stack_size = 100
    },
-----------------------------------------------------------------------------------------------------------------
------------------------------------------ CRAFTING RECIPES -----------------------------------------------------
-----------------------------------------------------------------------------------------------------------------  
	{
		type = "recipe",
		name = "plasma-rifle",
		energy_required = 35,
		enabled = false,
		allow_productivity = true,
		ingredients =
		{
			{"battery", 5},
			{"steel-plate", 10},
			{"processing-unit", 5},
			{"plastic-bar", 10}
		},
		result = "plasma-rifle"
	},	
	{
		type = "recipe",
		name = "radio-blaster",
		energy_required = 35,
		enabled = false,
		allow_productivity = true,
		ingredients =
		{
			{"battery", 5},
			{"heat-pipe", 5},
			{"steel-plate", 10},
			{"advanced-circuit", 10},
			{"plastic-bar", 5}
		},
		result = "radio-blaster"
	},	
	{
		type = "recipe",
		name = "plasma-rounds",
		energy_required = 15,
		enabled = false,
		allow_productivity = true,
		ingredients =
		{
			{"steel-plate", 10},
			{"sulfur", 5},
			{"plastic-bar", 5}
		},
		result = "plasma-rounds",
		result_count = 20
	},
	{
		type = "recipe",
		name = "radio-rounds",
		energy_required = 15,
		enabled = false,
		allow_productivity = true,
		ingredients =
		{
			{"uranium-235", 1},
			{"steel-plate", 10},
			{"plastic-bar", 5}
		},
		result = "radio-rounds",
		result_count = 10
	},
	{
		type = "recipe",
		name = "radio-shells",
		energy_required = 15,
		enabled = false,
		allow_productivity = true,
		ingredients =
		{
			{"uranium-235", 1},
			{"piercing-shotgun-shell", 15},
			{"steel-plate", 3}
		},
		result = "radio-shells",
		result_count = 15
	},
	{
		type = "recipe",
		name = "plasma-grenade",
		energy_required = 15,
		enabled = false,
		allow_productivity = true,
		ingredients =
		{
			{"copper-plate", 5},
			{"sulfur", 10},
			{"grenade", 10},
			{"steel-plate", 5}
		},
		result = "plasma-grenade",
		result_count = 5
	},
	
------------------------------------------------------------------------------------------------------------------  
------------------------------------------------ 113 PROJECTILEZ -------------------------------------------------
------------------------------------------------------------------------------------------------------------------

	{
    type = "projectile",
    name = "plasma-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.5, -5}, {0.5, 5}},
    acceleration = 0,
    --direction_only = true,
    piercing_damage = 50,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 42 , type = "laser"}
          },
          {
            type = "create-entity",
            entity_name = "plasma-impact"
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "plasma-exp-small",
			offset_deviation = { { -0.25, -0.15 }, { 0.25, 0.15 } }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 1,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 42, type = "laser"}
                  }
                }
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__gore__/graphics/weapons/plasma.png",
      frame_count = 1,
	  blend_mode = "additive",
      width = 18,
      height = 90,
      priority = "high"
    },
	light = {intensity = 2, size = 7, color = {r=0.1, g=0.4, b=1}},
    },
	
------------------------------------------------------------------------------------

	{
    type = "projectile",
    name = "radio-projectile",
    flags = {"not-on-map"},
    collision_box = {{-2, -0.5}, {2, 0.5}}, --- 1st = X = left/right
    acceleration = 0,
    hit_at_collision_position = true,
    piercing_damage = 100,
    action =
    {
      type = "direct",
      action_delivery =
      {
		type = "instant",
		target_effects =
		{
			{ type = "damage", damage = {amount = 300, type = "laser"}}
		}
	  }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "green-exp",
			probability = 1,
			repeat_count = 2,
			repeat_count_deviation = 1,
			initial_height = 1.5,
			initial_height_deviation = 1,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.15,
            initial_vertical_speed_deviation = 0.1,
            offset_deviation = { { -1, -1.5 }, { 1, 1.5 } }
          },
		  {
			type = "create-entity",
			entity_name = "small-scorchmark",
			check_buildability = true
		  },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 150, type = "laser"}
                  }
                }
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__gore__/graphics/weapons/radio.png",
      frame_count = 1,
	  blend_mode = "additive",
      width = 18,
      height = 90,
      priority = "high"
    },
	light = {intensity = 2, size = 7, color = {r=0.3, g=1, b=0.1}},
    },
	
-------------------------------------------------------------------------------------------------------------------------

{
    type = "projectile",
    name = "radio-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.85, -0.3}, {0.85, 0.3}}, --- 1st = X = left/right
    acceleration = 0,
    --hit_at_collision_position = true,
    piercing_damage = 100,
    action =
    {
      type = "direct",
      action_delivery =
      {
		type = "instant",
		target_effects =
		{
			{ type = "damage", damage = {amount = 25, type = "physical"}}
		}
	  }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {
            type = "create-entity",
            entity_name = "radio-impact",
			probability = 1
          },
          {
            type = "nested-result",
            action =
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
					{
                    type = "damage",
                    damage = {amount = 25, type = "physical"}
					},
					{
					type = "damage",
					damage = {amount = 30, type = "fire"}
					},
					{
					type = "create-fire",
                    entity_name = "fire-flame",
					probability = 0.25,
                    initial_ground_flame_count = 1
					}
                }
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__gore__/graphics/weapons/radio-small.png",
      frame_count = 1,
	  blend_mode = "additive",
      width = 8,
      height = 67,
      priority = "high"
    },
	light = {intensity = 2, size = 6, color = {r=0.3, g=1, b=0.1}},
    },
	
--------------------------------------------------------------------------------------
	
{
    type = "projectile",
    name = "plasma-grenade",
    flags = {"not-on-map"},
    acceleration = 0.015,
    action =
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
				entity_name = "plasma-exp"
			},
			{
				type = "create-entity",
				entity_name = "plasma-exp-med",
				repeat_count = 5,
				repeat_count_deviation = 2,
				offset_deviation = { { -2, -1.2 }, { 2, 1.2 } }
			},
			{
				type = "create-entity",
				entity_name = "blue-arc",
				probability = 1,
				repeat_count = 5,
				repeat_count_deviation = 2,
				offset_deviation = { { -2.5, -1.5 }, { 2.5, 1.5 } }
			},
			{
				type = "create-entity",
				entity_name = "blue-arc-big",
				probability = 0.66,
				repeat_count = 1,
				repeat_count_deviation = 2,
				offset_deviation = { { -1.25, -1 }, { 1.25, 1 } }
			},
			{
              type = "create-entity",
              entity_name = "medium-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 5
            },
			{
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 6.9,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 270, type = "explosion"}
                  },
				  {
                    type = "damage",
                    damage = {amount = 90, type = "laser"}
                  },
				  {
					type = "create-entity",
					entity_name = "plasma-exp-norm",
					repeat_count = 1,
					repeat_count_deviation = 1,
					offset_deviation = { { -0.25, -0.15 }, { 0.25, 0.15 } }
				  },
				  {
					type = "create-entity",
					entity_name = "blue-arc",
					probability = 0.5,
					repeat_count = 1,
					offset_deviation = { { -0.25, -0.15 }, { 0.25, 0.15 } }
				  }
                }
              }
            }
          }
          }
        }
      }
    },
    light = {intensity = 1, size = 15, color = {r=0.1, g=0.5, b=1}},
    animation =
    {
      filename = "__gore__/graphics/weapons/plasma-gren.png",
      frame_count = 16,
	  line_length = 8,
      animation_speed = 0.8,
      width = 58,
      height = 59,
      shift = util.by_pixel(1, 0.5),
      priority = "high",
      scale = 0.45
    },
	smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
},

-------------------------------------------------------------------------

{
    type = "projectile",
    name = "firefly",
    flags = {"not-on-map"},
    acceleration = 0.02,
    turn_speed = 0.008,
    turning_speed_increases_exponentially_with_projectile_speed = true,
	piercing_damage = 50,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "fire-exp"
          },
          {
            type = "damage",
            damage = {amount = 45, type = "laser"}
          },
          {
            type = "destroy-decoratives",
            from_render_layer = "decorative",
            to_render_layer = "object",
            include_soft_decoratives = true, 
            include_decals = false,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false, 
            radius = 1.5 
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "fire-exp",
			offset_deviation = { { -0.25, -0.15 }, { 0.25, 0.15 } }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 2,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 36, type = "fire"}
                  }
                }
              }
            }
          }
        }
      }
    },
    light = {intensity = 0.75, size = 4, color = {r=1, g=0.7, b=0.15}},
    animation =
    {
      filename = "__gore__/graphics/weapons/firefly.png",
      draw_as_glow = true,
	  blend_mode = "additive",
      frame_count = 1,
      line_length = 1,
      width = 18,
      height = 90,
      shift = {0, 0},
      priority = "high"
    }
},

--------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------
----------------------------------------- EKUSUPUROSCHON ANIMS ----------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------

{
		type = "explosion",
		name = "plasma-impact",
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = {
	{
      filename = "__gore__/graphics/weapons/plasma-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      frame_count = 2,
      animation_speed = 0.9,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/plasma-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 2,
      frame_count = 2,
      animation_speed = 0.9,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/plasma-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 4,
      frame_count = 3,
      animation_speed = 0.9,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/plasma-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 7,
      frame_count = 3,
      animation_speed = 0.9,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/plasma-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 10,
      frame_count = 3,
      animation_speed = 0.9,
      shift = {0, 0}
	}
	},
		rotate = true,
		smoke = "smoke-fast",
		smoke_count = 7,
		smoke_slow_down_factor = 0.25,
		light = {intensity = 2, size = 12, color = {r=0.1, g=0.4, b=1}}
},
--------------------------------------------------------------------
{
		type = "explosion",
		name = "radio-impact",
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = {
	{
      filename = "__gore__/graphics/weapons/radio-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      frame_count = 2,
      animation_speed = 1.5,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/radio-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 2,
      frame_count = 2,
      animation_speed = 1.5,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/radio-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 4,
      frame_count = 3,
      animation_speed = 1.5,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/radio-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 7,
      frame_count = 3,
      animation_speed = 1.5,
      shift = {0, 0}
    },
    {
      filename = "__gore__/graphics/weapons/radio-hit.png",
      priority = "extra-high",
	  draw_as_glow = true,
	  blend_mode = "additive",
      width = 51,
      height = 57,
      x = 51 * 10,
      frame_count = 3,
      animation_speed = 1.5,
      shift = {0, 0}
	}
	},
		rotate = true,
		smoke = "smoke-fast",
		smoke_count = 7,
		smoke_slow_down_factor = 0.25,
		light = {intensity = 2, size = 12, color = {r=0.3, g=1, b=0.1}},
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
	type = "create-particle",
        repeat_count = 5,
		repeat_count_deviation = 2,
		probability = 0.25,
		particle_name = "spark-green",
		offset_deviation = { { -0.15, -0.15 }, { 0.15, 0.15 } },
		initial_height = 0.5,
		initial_height_deviation = 0.2,
		initial_vertical_speed = 0,
		initial_vertical_speed_deviation = 0,
		speed_from_center = 0.085,
		speed_from_center_deviation = 0.05,
        frame_speed_deviation = 0,
        tail_length = 15,
        tail_length_deviation = 5,
        tail_width = 1
	}
		}
	}}
},
--------------------------------------------------------------------	

	{
		type = "explosion",
		name = "plasma-exp-small",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = 
		{
		filename = "__gore__/graphics/weapons/plasma-exp-small.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 102,
        height = 88,
        frame_count = 17,
        animation_speed = 0.55,
        shift = util.by_pixel(-1,1.5),
        scale = 0.66
		},
		light = {intensity = 1, size = 12, color = {r=0.1, g=0.35, b=1}},
		sound =
		{
			aggregation =
			{
				max_count = 2,
				remove = true
			},
			audible_distance_modifier = 1.4,
			variations =
			{
				{ filename = "__gore__/sound/weapons/plasma-hit-1.ogg", volume = 0.6 },
				{ filename = "__gore__/sound/weapons/plasma-hit-2.ogg", volume = 0.6 },
				{ filename = "__gore__/sound/weapons/plasma-hit-3.ogg", volume = 0.6 }
			}
		},
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
	type = "create-particle",
        repeat_count = 5,
		repeat_count_deviation = 5,
		probability = 0.7,
		particle_name = "pole-spark-particle",
		offset_deviation = { { -0.15, -0.5 }, { 0.15, 0.5 } },
		initial_height = 0.6,
		initial_height_deviation = 1.5,
		initial_vertical_speed = 0.01,
		initial_vertical_speed_deviation = 0.01,
		speed_from_center = 0.15,
		speed_from_center_deviation = 0.3,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 25,
        tail_length_deviation = 45,
        tail_width = 15
    },
	{
	type = "create-particle",
        repeat_count = 5,
		repeat_count_deviation = 5,
		probability = 1,
		particle_name = "pole-spark-particle",
		offset_deviation = { { -0, -0.25 }, { 0, 0.25 } },
		initial_height = 0.5,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.01,
		initial_vertical_speed_deviation = 0.01,
		speed_from_center = 0.1,
		speed_from_center_deviation = 0.25,
		frame_speed = 0.025,
        frame_speed_deviation = 0,
        tail_length = 25,
        tail_length_deviation = 50,
        tail_width = 10
    },
	{
    type = "create-particle",
		repeat_count = 5,
		repeat_count_deviation = 10,
		probability = 0.5,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.05, -0.5 }, { 0.05, 0.5 } },
		initial_height = 0.25,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.075,
		speed_from_center_deviation = 0.1
    }}}}
},

----------------------------------------------------------------------------

{
		type = "explosion",
		name = "fire-exp",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = 
		{
		filename = "__gore__/graphics/weapons/fire-explosion.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 102,
        height = 88,
        frame_count = 17,
        animation_speed = 0.55,
        shift = util.by_pixel(-1,1.5),
        scale = 0.66
		},
		light = {intensity = 1, size = 8, color = {r=1, g=0.66, b=0.1}},
		sound =
		{
			aggregation =
			{
				max_count = 4,
				remove = true,
				count_already_playing = true
			},
			variations =
			{
				{ filename = "__gore__/sound/weapons/plasma-hit-1.ogg", volume = 0.5 },
				{ filename = "__gore__/sound/weapons/plasma-hit-2.ogg", volume = 0.5 },
				{ filename = "__gore__/sound/weapons/plasma-hit-3.ogg", volume = 0.5 }
			}
		},
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
	type = "create-particle",
        repeat_count = 5,
		repeat_count_deviation = 5,
		probability = 1,
		particle_name = "spark-orange",
		offset_deviation = { { -0, -0.25 }, { 0, 0.25 } },
		initial_height = 0.5,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.01,
		initial_vertical_speed_deviation = 0.01,
		speed_from_center = 0.1,
		speed_from_center_deviation = 0.25,
		frame_speed = 0.025,
        frame_speed_deviation = 0,
        tail_length = 25,
        tail_length_deviation = 50,
        tail_width = 10
    },
	{
    type = "create-particle",
		repeat_count = 5,
		repeat_count_deviation = 10,
		probability = 0.5,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.05, -0.5 }, { 0.05, 0.5 } },
		initial_height = 0.25,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.075,
		speed_from_center_deviation = 0.1
    }}}}
},

----------------------------------------------------------------------------

{
		type = "explosion",
		name = "plasma-exp-norm",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = 
		{
		filename = "__gore__/graphics/weapons/plasma-exp-small.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 102,
        height = 88,
        frame_count = 17,
        animation_speed = 0.525,
        shift = util.by_pixel(-1,1.5),
        scale = 1
		},
		light = {intensity = 1, size = 10, color = {r=0.1, g=0.4, b=1}},
		sound =
		{
			aggregation =
			{
				max_count = 1,
				remove = true,
				count_already_playing = true
			},
			audible_distance_modifier = 1.4,
			variations =
			{
				{ filename = "__gore__/sound/weapons/plasma-hit-1.ogg", volume = 0.5 },
				{ filename = "__gore__/sound/weapons/plasma-hit-2.ogg", volume = 0.5 },
				{ filename = "__gore__/sound/weapons/plasma-hit-3.ogg", volume = 0.5 }
			}
		},
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
	type = "create-particle",
        repeat_count = 5,
		repeat_count_deviation = 5,
		probability = 1,
		particle_name = "pole-spark-particle",
		offset_deviation = { { -0, -0.25 }, { 0, 0.25 } },
		initial_height = 0.5,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.01,
		initial_vertical_speed_deviation = 0.01,
		speed_from_center = 0.1,
		speed_from_center_deviation = 0.25,
		frame_speed = 0.025,
        frame_speed_deviation = 0,
        tail_length = 25,
        tail_length_deviation = 50,
        tail_width = 10
    },
	{
    type = "create-particle",
		repeat_count = 5,
		repeat_count_deviation = 10,
		probability = 0.5,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.05, -0.5 }, { 0.05, 0.5 } },
		initial_height = 0.25,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.075,
		speed_from_center_deviation = 0.1
    }}}}
},

----------------------------------------------------------------------------

{
		type = "explosion",
		name = "green-impact",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = 
		{
		filename = "__gore__/graphics/weapons/green-impact.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 9,
        width = 225,
        height = 225,
        frame_count = 80,
        animation_speed = 1,
        shift = util.by_pixel(0,0),
        scale = 0.4
		},
		light = {intensity = 2, size = 12, color = {r=0.1, g=0.35, b=1}},
		created_effect =
		{
		type = "direct",
		action_delivery =
		{
        type = "instant",
        target_effects =
        {
		{
		type = "create-particle",
		repeat_count = 1,
		repeat_count_deviation = 1,
		probability = 0.1,
		particle_name = "spark-green",
		offset_deviation = { { -0.15, -0.5 }, { 0.15, 0.5 } },
		initial_height = 0.6,
		initial_height_deviation = 1.5,
		initial_vertical_speed = 0.01,
		initial_vertical_speed_deviation = 0.01,
		speed_from_center = 0.15,
		speed_from_center_deviation = 0.3,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 25,
        tail_length_deviation = 45,
        tail_width = 15
		}}}}
},

--------------------------------------------------------------
	{
		type = "explosion",
		name = "plasma-exp",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = 
		{
			filename = "__gore__/graphics/weapons/plasma-explosion.png",
			flags = { "compressed" },
			width = 300,
			height = 300,
			frame_count = 47,
			line_length = 8,
			shift = {0.1875, -0.75},
			draw_as_glow = true,
			animation_speed = 0.55,
			scale = 1.25
		},
		light = {intensity = 1, size = 15, color = {r=0.1, g=0.4, b=1}},
		sound =
		{
			aggregation = { max_count = 2, remove = true },
			audible_distance_modifier = 1.95,
			variations =
			{
				{ filename = "__gore__/sound/weapons/exp-lsr-1.ogg", volume = 0.77 },
				{ filename = "__gore__/sound/weapons/exp-lsr-2.ogg", volume = 0.77 },
				{ filename = "__gore__/sound/weapons/exp-lsr-3.ogg", volume = 0.77 },
				{ filename = "__gore__/sound/weapons/exp-lsr-4.ogg", volume = 0.77 },
				{ filename = "__gore__/sound/weapons/exp-lsr-5.ogg", volume = 0.77 },
				{ filename = "__gore__/sound/weapons/exp-lsr-6.ogg", volume = 0.77 }
			}
		},
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
    type = "create-particle",
		repeat_count = 5,
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
        repeat_count = 40,
		repeat_count_deviation = 10,
		probability = 1,
		particle_name = "pole-spark-particle",
		offset_deviation = { { -1.5, -2 }, { 1.5, 2 } },
		initial_height = 1,
		initial_height_deviation = 2,
		initial_vertical_speed = 0.01,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.15,
		speed_from_center_deviation = 0.15,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 64,
        tail_length_deviation = 69,
        tail_width = 2
    },
	{
	type = "create-particle",
        repeat_count = 20,
		repeat_count_deviation = 5,
		probability = 1,
		particle_name = "pole-spark-particle",
		offset_deviation = { { -0.25, -1 }, { 0.25, 1 } },
		initial_height = 1,
		initial_height_deviation = 1,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.1,
		speed_from_center = 0.025,
		speed_from_center_deviation = 0.1,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 36,
        tail_length_deviation = 42,
        tail_width = 1
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
    }}}}
},

---------------------------------------------------------------------------------------

{
		type = "explosion",
		name = "plasma-exp-med",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = 
		{
		 {	
			filename = "__gore__/graphics/weapons/plasma-exp-med.png",
			flags = { "compressed" },
			width = 256,
			height = 256,
			frame_count = 32,
			line_length = 8,
			shift = {0, 0},
			draw_as_glow = true,
			animation_speed = 0.75,
			scale = 0.5
		 },
		 {	
			filename = "__gore__/graphics/weapons/plasma-exp-med-2.png",
			flags = { "compressed" },
			width = 256,
			height = 256,
			frame_count = 32,
			line_length = 8,
			shift = {0, 0},
			draw_as_glow = true,
			animation_speed = 0.77,
			scale = 0.55
		 },
		 {	
			filename = "__gore__/graphics/weapons/plasma-exp-med-3.png",
			flags = { "compressed" },
			width = 256,
			height = 256,
			frame_count = 32,
			line_length = 8,
			shift = {0, 0},
			draw_as_glow = true,
			animation_speed = 0.84,
			scale = 0.5
		 },
		},
		light = {intensity = 1, size = 15, color = {r=0.1, g=0.4, b=1}},
		sound = nil, --med_explosion_sound,
		
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
    type = "create-particle",
		repeat_count = 8,
		repeat_count_deviation = 4,
		probability = 0.35,
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
        repeat_count = 10,
		repeat_count_deviation = 5,
		probability = 0.3,
		particle_name = "pole-spark-particle",
		offset_deviation = { { -1.5, -2 }, { 1.5, 2 } },
		initial_height = 1,
		initial_height_deviation = 2,
		initial_vertical_speed = 0.01,
		initial_vertical_speed_deviation = 0.05,
		speed_from_center = 0.15,
		speed_from_center_deviation = 0.15,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 64,
        tail_length_deviation = 69,
        tail_width = 2
    },
	{
	type = "create-particle",
        repeat_count = 10,
		repeat_count_deviation = 5,
		probability = 0.25,
		particle_name = "pole-spark-particle",
		offset_deviation = { { -0.25, -1 }, { 0.25, 1 } },
		initial_height = 1,
		initial_height_deviation = 1,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.1,
		speed_from_center = 0.025,
		speed_from_center_deviation = 0.1,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 36,
        tail_length_deviation = 42,
        tail_width = 1
    },
	{
    type = "create-particle",
		repeat_count = 10,
		repeat_count_deviation = 10,
		probability = 0.5,
		particle_name = "explosion-stone-particle-medium",
		offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		initial_height = 0.25,
		initial_height_deviation = 0.5,
		initial_vertical_speed = 0.075,
		initial_vertical_speed_deviation = 0.15,
		speed_from_center = 0.075,
		speed_from_center_deviation = 0.25
    }}}}
},

---------------------------------------------------------------------------------------

{
		type = "explosion",
		name = "blue-arc-big",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations =
		{
		 {	filename = "__gore__/graphics/weapons/arc-big.png",
			flags = { "compressed" },
			width = 512,
			height = 512,
			frame_count = 1,
			line_length = 1,
			shift = {0, 0},
			draw_as_glow = true,
			blend_mode = "additive",
			animation_speed = 0.25,
			scale = 0.4
		 },
		 {	filename = "__gore__/graphics/weapons/arc-med.png",
			flags = { "compressed" },
			width = 420,
			height = 420,
			frame_count = 1,
			line_length = 1,
			shift = {0, 0},
			draw_as_glow = true,
			blend_mode = "additive",
			animation_speed = 0.25,
			scale = 0.5
		 }
		},
		 sound = electric_arc_sound,
		 light = {intensity = 1, size = 12, color = {r=0.15, g=0.5, b=1}},
},

---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------

{
		type = "explosion",
		name = "blue-arc",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations =
		{
		 {	filename = "__gore__/graphics/weapons/arc1.png",
			flags = { "compressed" },
			width = 128,
			height = 128,
			frame_count = 1,
			line_length = 1,
			shift = {0, 0},
			draw_as_glow = true,
			blend_mode = "additive",
			animation_speed = 0.25,
			scale = 0.85
		 },
		 {	filename = "__gore__/graphics/weapons/arc2.png",
			flags = { "compressed" },
			width = 128,
			height = 128,
			frame_count = 1,
			line_length = 1,
			shift = {0, 0},
			draw_as_glow = true,
			blend_mode = "additive",
			animation_speed = 0.25,
			scale = 0.85
		 },
		 {	filename = "__gore__/graphics/weapons/arc3.png",
			flags = { "compressed" },
			width = 128,
			height = 128,
			frame_count = 1,
			line_length = 1,
			shift = {0, 0},
			draw_as_glow = true,
			blend_mode = "additive",
			animation_speed = 0.25,
			scale = 0.85
		 }
		},
		 sound = electric_arc_sound,
		 light = {intensity = 1, size = 8, color = {r=0.15, g=0.5, b=1}},
},

---------------------------------------------------------------------------------------

{
		type = "explosion",
		name = "green-exp",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = { 
		{
			filename = "__gore__/graphics/weapons/green-exp.png",
			flags = { "compressed" },
			width = 256,
			height = 256,
			frame_count = 32,
			line_length = 8,
			shift = {0, 0},
			draw_as_glow = true,
			animation_speed = 0.66,
			scale = 0.6
		},
		{
			filename = "__gore__/graphics/weapons/green-exp-2.png",
			flags = { "compressed" },
			width = 256,
			height = 256,
			frame_count = 32,
			line_length = 8,
			shift = {0, 0},
			draw_as_glow = true,
			animation_speed = 0.88,
			scale = 0.7
		},
		{
			filename = "__gore__/graphics/weapons/green-exp-med.png",
			flags = { "compressed" },
			width = 256,
			height = 256,
			frame_count = 32,
			line_length = 8,
			shift = {0, 0},
			draw_as_glow = true,
			animation_speed = 0.74,
			scale = 0.8
		}
		},
		light = {intensity = 1, size = 18, color = {r=0.2, g=1, b=0.1}},
		
		sound = {
		variations = {
		{ filename = "__gore__/sound/weapons/exp-big-1.ogg", volume = 0.7 },
		{ filename = "__gore__/sound/weapons/exp-big-2.ogg", volume = 0.7 },
		{ filename = "__gore__/sound/weapons/exp-big-3.ogg", volume = 0.7 },
		{ filename = "__gore__/sound/weapons/exp-big-4.ogg", volume = 0.7 },
		{ filename = "__gore__/sound/weapons/exp-big-5.ogg", volume = 0.7 },
		{ filename = "__gore__/sound/weapons/exp-big-6.ogg", volume = 0.7 }
		},
		aggregation =
		{
		max_count = 1,
		remove = true,
		count_already_playing = false
		},
		audible_distance_modifier = 1.25
	},
	
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
    type = "create-particle",
		repeat_count = 5,
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
        repeat_count = 14,
		repeat_count_deviation = 7,
		probability = 1,
		particle_name = "spark-green",
		offset_deviation = { { -0.25, -1 }, { 0.25, 1 } },
		initial_height = 1,
		initial_height_deviation = 2,
		initial_vertical_speed = 0.0,
		initial_vertical_speed_deviation = 0,
		speed_from_center = 0.15,
		speed_from_center_deviation = 0.1,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 36,
        tail_length_deviation = 25,
        tail_width = 1
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
    }}}}
},
---------------------------------------------------------------------------------------
{
		type = "explosion",
		name = "radio-exp",
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map"},
		subgroup = "explosions",
		animations = 
		{
			filename = "__gore__/graphics/weapons/radio-exp.png",
			flags = { "compressed" },
			width = 300,
			height = 300,
			frame_count = 47,
			line_length = 8,
			shift = {0.1875, -0.75},
			draw_as_glow = true,
			animation_speed = 0.5,
			scale = 1.2
		},
		sound = med_explosion_sound,
		
	created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
	{
    type = "create-particle",
		repeat_count = 6,
		repeat_count_deviation = 12,
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
        repeat_count = 15,
		repeat_count_deviation = 10,
		probability = 1,
		particle_name = "spark-particle",
		tint = { r = 0.35, g = 1, b = 0.1, a = 1},
		offset_deviation = { { -1.5, -2 }, { 1.5, 2 } },
		initial_height = 1,
		initial_height_deviation = 2,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.1,
		speed_from_center = 0.1,
		speed_from_center_deviation = 0.2,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 64,
        tail_length_deviation = 69,
        tail_width = 2
    },
	{
	type = "create-particle",
        repeat_count = 20,
		repeat_count_deviation = 5,
		probability = 1,
		particle_name = "spark-particle",
		tint = { r = 0.35, g = 1, b = 0.1, a = 1},
		offset_deviation = { { -0.25, -1 }, { 0.25, 1 } },
		initial_height = 1,
		initial_height_deviation = 1,
		initial_vertical_speed = 0.05,
		initial_vertical_speed_deviation = 0.1,
		speed_from_center = 0.05,
		speed_from_center_deviation = 0.1,
		frame_speed = 0.01,
        frame_speed_deviation = 0,
        tail_length = 36,
        tail_length_deviation = 42,
        tail_width = 1
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
}}}},

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------- PARTICLES FX ---------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
{
	type = "optimized-particle",
    name = "spark-green",
    life_time = 42,
    pictures = {
	sheet =
    {
      filename = "__gore__/graphics/weapons/sparks-green.png",
      draw_as_glow = true,
      line_length = 12,
      width = 4,
      height = 4,
      frame_count = 12,
      variation_count = 3,
      shift = util.by_pixel(0,0),
	  draw_as_glow = true
	},
    ended_in_water_trigger_effect = false,
    movement_modifier_when_on_ground = 0,
    render_layer = "air-object"
	}
},
  
{
	type = "optimized-particle",
    name = "spark-orange",
    life_time = 42,
    pictures = {
	sheet =
    {
      filename = "__gore__/graphics/weapons/sparks-orange.png",
      draw_as_glow = true,
      line_length = 12,
      width = 4,
      height = 4,
      frame_count = 12,
      variation_count = 3,
      shift = util.by_pixel(0,0),
	  draw_as_glow = true
	},
    ended_in_water_trigger_effect = false,
    movement_modifier_when_on_ground = 0,
    render_layer = "air-object"
	}
}

})

