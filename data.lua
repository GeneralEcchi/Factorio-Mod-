local r
local g
local b
local a
local decals_r
local decals_g
local decals_b
local decals_a
local particle_r
local particle_g
local particle_b
local particle_a
local particle_shadows = false
local particle_premul_alpha = true
local preset = ""
local particlescale = settings.startup["particlescale"].value
if settings.startup["preset"].value == "blood-red" then
	preset = "red-"
	r            =0.9
	g            =0
	b            =0.1
	a            =0.7
	decals_r   =0.7 --*1.1
	decals_g   =0   --*1.1
	decals_b   =0.08--*1.1
	decals_a   =0.71 --*1.1
	particle_r	 =0.5
	particle_g	 =0
	particle_b	 =0.022	
	particle_a	 =0.8	
	
elseif settings.startup["preset"].value == "rainbow" then
	preset = "rainbow-"
	r            =1
	g            =1
	b            =1
	a            =1
	decals_r   =1
	decals_g   =1
	decals_b   =1
	decals_a   =1
	particle_r   =0.5
	particle_g   =0.5
	particle_b   =0.0
	particle_a   =0.01
	--particlescale = particlescale*1.5
	--data.raw.explosion["blood-explosion-small"].created_effect.action_delivery.target_effects.repeat_count = 2--4
	--data.raw.explosion["blood-explosion-big"].created_effect.action_delivery.target_effects[2].repeat_count = 2--4
	--data.raw.explosion["blood-explosion-big"].created_effect.action_delivery.target_effects[1].repeat_count = 3--7
	--data.raw.explosion["blood-explosion-huge"].created_effect.action_delivery.target_effects[2].repeat_count = 2--4
	--data.raw.explosion["blood-explosion-huge"].created_effect.action_delivery.target_effects[1].repeat_count = 3--7
	
elseif settings.startup["preset"].value == "green" then
	r            =0.01
	g            =0.15
	b            =0.0
	a            =0.88
	decals_r   =0.01
	decals_g   =0.15
	decals_b   =0.0
	decals_a   =0.7
	particle_r   =0.01
	particle_g   =0.15
	particle_b   =0.0
	particle_a   =0.7
elseif settings.startup["preset"].value == "purple" then
	r          	=0.24
	g          	=0.02
	b          	=0.24
	a          	=0.8
	decals_r   	=0.16
	decals_g   	=0.0
	decals_b   	=0.16
	decals_a   	=0.7
	particle_r 	=0.18
	particle_g 	=0.02
	particle_b 	=0.18
	particle_a 	=0.7
elseif settings.startup["preset"].value == "puke" then
	r          	=0.29
	g          	=0.34
	b          	=0.03
	a          	=0.75
	decals_r   	=0.22
	decals_g   	=0.26
	decals_b   	=0.03
	decals_a   	=0.7
	particle_r 	=0.24--*1.3
	particle_g 	=0.29--*1.3
	particle_b 	=0.01--*1.3
	particle_a 	=0.7
	particle_shadows = false
else
	r            =settings.startup["r"].value
	g            =settings.startup["g"].value
	b            =settings.startup["b"].value
	a            =settings.startup["a"].value
	decals_r   =settings.startup["splatter-r"].value
	decals_g   =settings.startup["splatter-g"].value
	decals_b   =settings.startup["splatter-b"].value
	decals_a   =settings.startup["splatter-a"].value
	particle_r   =settings.startup["particle-r"].value
	particle_g   =settings.startup["particle-g"].value	
	particle_b   =settings.startup["particle-b"].value	
	particle_a   =settings.startup["particle-a"].value	
end
local scale        =settings.startup["scale"].value
local splatterscale=settings.startup["splatterscale"].value
local splatterduration=math.max(1,settings.startup["splatterduration"].value*60)


local tinter = {r=r,g=g,b=b,a=a}			---changes blood color
local splattertinter = {r=decals_r,g=decals_g,b=decals_b,a=decals_a}





local scaler = scale							--scale of the blood explosions
local splatterscaler = splatterscale 						--scale of the blood decals on the floor
local splatterduration = splatterduration					--duration how long blood decals stay on the floor

local shifter = {0,0.3}
local blender = "normal"
local flagger = {"not-on-map", "placeable-off-grid", "not-flammable"}

require("bloodparticle")
data.raw["optimized-particle"]["blood-particle"].pictures = gore_blood_particle{preset = preset,scale = particlescale, tint={r=particle_r,g=particle_g,b=particle_b,a=particle_a,blend_mode = blender},premul_alpha = particle_premul_alpha}
if particle_shadows then--particle_r > 0 and particle_g > 0 and particle_b > 0 then
	data.raw["optimized-particle"]["blood-particle"].shadows = gore_blood_particle_shadow{scale = 1*settings.startup["particlescale"].value}
else
	data.raw["optimized-particle"]["blood-particle"].shadows = nil
end


--for key, tbl in pairs(data.raw.particle["blood-particle"].pictures) do
--tbl.filename = "__gore__/graphics/blood-particle/"..preset.."blood-particle-"..key..".png"
--tbl.width = tbl.width*2
--tbl.height = tbl.height*2
--tbl.scale = 1*settings.startup["particlescale"].value
--tbl.blend_mode = blender
--tbl.tint = {r=0,g=0,b=0,a=0}  --{r=0.3,g=0,b=0.01,a=0.3}
--tbl.tint.r = particle_r
--tbl.tint.g = particle_g
--tbl.tint.b = particle_b
--tbl.tint.a = particle_a
--tbl.hr_version = nil
--end
data.raw["optimized-particle"]["blood-particle"].life_time = 60*20
data.raw["optimized-particle"]["blood-particle"].life_time = 30
--if not settings.startup["gore_custom_decals"].value then
	data.raw["optimized-particle"]["blood-particle"].life_time = math.max(1,settings.startup["puddleduration"].value*60+60)
--end

--data.raw["explosion"]["blood-explosion-small"].created_effect.action_delivery.target_effects.repeat_count =  40--math.floor(data.raw["explosion"]["blood-explosion-small"].created_effect.action_delivery.target_effects.repeat_count * 0.5)
--data.raw["explosion"]["blood-explosion-big"].created_effect.action_delivery.target_effects[2].repeat_count = 40--math.floor(data.raw["explosion"]["blood-explosion-big"].created_effect.action_delivery.target_effects[2].repeat_count * 0.5)
--data.raw["particle-source"]["blood-fountain"].horizontal_speed_deviation = 0.0001
--data.raw["particle-source"]["blood-fountain"].vertical_speed_deviation = 0.0001
--data.raw["particle-source"]["blood-fountain"].horizontal_speed = 0.09
--data.raw["particle-source"]["blood-fountain"].time_to_live_deviation = 5
--data.raw["particle-source"]["blood-fountain"].time_to_live_deviation = 3
--data.raw["particle-source"]["blood-fountain"].time_to_live = 20
--data.raw["particle-source"]["blood-fountain"].time_before_start_deviation = 2
--data.raw["explosion"]["blood-explosion-huge"]



bigparticle = table.deepcopy(data.raw["optimized-particle"]["blood-particle"])
bigparticle.name = "big-blood-particle"
bigparticle.life_time = math.max(1,settings.startup["particleduration"].value*60)					--duration how long bullet impact particles stay on the floor
bigparticle.render_layer = "decorative"

for key, tbl in pairs(bigparticle.pictures) do
tbl.blend_mode = blender
tbl.render_layer = "decorative"
tbl.tint.r = particle_r
tbl.tint.g = particle_g
tbl.tint.b = particle_b
tbl.tint.a = particle_a
end

if bigparticle.shadows then
	for _, tbl in pairs(bigparticle.shadows) do
		tbl.scale = 0.01
	end
end

bigfountain = table.deepcopy(data.raw["particle-source"]["blood-fountain"])
bigfountain.name = "big-blood-fountain"
bigfountain.flags = flagger
bigfountain.particle = "big-blood-particle"
bigfountain.vertical_speed = 0.05
bigfountain.vertical_speed_deviation = 0.035
bigfountain.horizontal_speed = 0.035
bigfountain.horizontal_speed_deviation = 0.015
bigfountain.height_deviation = 0.15
bigfountain.time_to_live = 5
bigfountain.time_to_live_deviation = 2
bigfountain.render_layer = "decorative"

data:extend({
	  bigparticle,
	  bigfountain,
	{
		type = "smoke-with-trigger",
		name = "blood1",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood1.png",
			priority = "low",
			width = 256,
			height = 256,
			frame_count = 16,
			animation_speed = 0.36,
			line_length = 16,
			scale = 0.9*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 28,
		fade_away_duration = 13,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood2",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood2.png",
			priority = "low",
			width = 256,
			height = 256,
			frame_count = 16,
			animation_speed = 0.36,
			line_length = 16,
			scale = 0.75*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 29,
		fade_away_duration = 13,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood3",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood3.png",
			priority = "low",
			width = 256,
			height = 256,
			frame_count = 24,
			animation_speed = 0.33,
			line_length = 16,
			scale = 0.8*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 35,
		fade_away_duration = 15,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood4",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood4.png",
			priority = "low",
			width = 255,
			height = 256,
			frame_count = 24,
			animation_speed = 0.4,
			line_length = 16,
			scale = 0.69*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 35,
		fade_away_duration = 15,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood5",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood5.png",
			priority = "low",
			width = 256,
			height = 256,
			frame_count = 20,
			animation_speed = 0.33,
			line_length = 10,
			scale = 0.5*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 35,
		fade_away_duration = 15,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood7",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood7.png",
			priority = "low",
			width = 255,
			height = 256,
			frame_count = 14,
			animation_speed = 0.3,
			line_length = 14,
			scale = 0.76*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = {shifter[1],shifter[2]+0.15},
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 15,
		fade_away_duration = 8,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood6",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood6.png",
			priority = "low",
			width = 255,
			height = 256,
			frame_count = 24,
			animation_speed = 0.5,
			line_length = 16,
			scale = 0.8*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 26,
		fade_away_duration = 11,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter1",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter1b.png",
			priority = "low",
			width = 511,
			height = 420,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.3*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter2",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter2b.png",
			priority = "low",
			width = 512,
			height = 420,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.3*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter3",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter3b.png",
			priority = "low",
			width = 512,
			height = 384,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.3*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter4",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter4b.png",
			priority = "low",
			width = 512,
			height = 419,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.3*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter5",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter5b.png",
			priority = "low",
			width = 560,
			height = 420,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.3*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter6",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter6b.png",
			priority = "low",
			width = 510,
			height = 512,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.3*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter7",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter7b.png",
			priority = "low",
			width = 510,
			height = 512,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.25*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	}
	})
	
----------------------						----------------------						----------------------						--corpse updates

for i=0,34 do
	local explo = table.deepcopy(data.raw.explosion["blood-explosion-small"])
	explo.name = "blood-explosion-"..i
	explo.created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-entity",
          entity_name = "blood-fountain",
          repeat_count = 1+i,
          offset_deviation = {{-0.4, -0.4}, {0.4, 0.4}}
        }
      }
    }
	data:extend({explo})
end

if settings.startup["replace-sound"].value then
	data.raw.gun["combat-shotgun"].attack_parameters.sound = { 
	{ filename = "__gore__/sound/weapons/Cshotgun-1.ogg", volume = 0.64 },
 	{ filename = "__gore__/sound/weapons/Cshotgun-2.ogg", volume = 0.62 },
	{ filename = "__gore__/sound/weapons/Cshotgun-3.ogg", volume = 0.64 },
	{ filename = "__gore__/sound/weapons/Cshotgun-4.ogg", volume = 0.63 },
	{ filename = "__gore__/sound/weapons/Cshotgun-5.ogg", volume = 0.64 },
	{ filename = "__gore__/sound/weapons/Cshotgun-6.ogg", volume = 0.64 },
	{ filename = "__gore__/sound/weapons/Cshotgun-7.ogg", volume = 0.62 },
	{ filename = "__gore__/sound/weapons/Cshotgun-8.ogg", volume = 0.62 },
	{ filename = "__gore__/sound/weapons/Cshotgun-9.ogg", volume = 0.63 },
	{ filename = "__gore__/sound/weapons/Cshotgun-10.ogg", volume = 0.62 }
}
end

if settings.startup["replace-sound"].value then
	data.raw.gun["submachine-gun"].attack_parameters.sound = {
	{ filename = "__gore__/sound/weapons/smg-1.ogg", volume = 0.42 },
	{ filename = "__gore__/sound/weapons/smg-2.ogg", volume = 0.42 },
	{ filename = "__gore__/sound/weapons/smg-3.ogg", volume = 0.42 },
	{ filename = "__gore__/sound/weapons/smg-4.ogg", volume = 0.42 },
	{ filename = "__gore__/sound/weapons/smg-5.ogg", volume = 0.42 },
	{ filename = "__gore__/sound/weapons/smg-6.ogg", volume = 0.42 }
	}
end

if settings.startup["replace-sound"].value then
	data.raw.explosion["medium-explosion"].sound = {
	variations = {
	{ filename = "__gore__/sound/weapons/exp-med-1.ogg", volume = 0.88 },
	{ filename = "__gore__/sound/weapons/exp-med-2.ogg", volume = 0.88 },
	},
	aggregation =
    {
      max_count = 2,
      remove = true
    },
    audible_distance_modifier = 1.5,
	}
end

if settings.startup["replace-sound"].value then
	data.raw.explosion["big-explosion"].sound = {
	variations = {
	{ filename = "__gore__/sound/weapons/exp-big-1.ogg", volume = 0.88 },
	{ filename = "__gore__/sound/weapons/exp-big-2.ogg", volume = 0.88 },
	{ filename = "__gore__/sound/weapons/exp-big-3.ogg", volume = 0.88 },
	{ filename = "__gore__/sound/weapons/exp-big-4.ogg", volume = 0.88 },
	{ filename = "__gore__/sound/weapons/exp-big-5.ogg", volume = 0.88 },
	{ filename = "__gore__/sound/weapons/exp-big-6.ogg", volume = 0.88 }
	},
	aggregation =
    {
      max_count = 2,
      remove = true
    },
    audible_distance_modifier = 1.95,
	}
end

