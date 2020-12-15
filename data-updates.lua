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
local preset = ""
local puddle_d = 0.9
if settings.startup["preset"].value == "blood-red" then
	preset = "red-"
	r            =0.9
	--r            =1
	g            =0
	b            =0.1
	a            =0.7
	--a            =1
	decals_r   =0.7
	decals_g   =0
	decals_b   =0.08
	decals_a   =0.7
	particle_r	 =0.63
	particle_g	 =0
	particle_b	 =0.072	
	particle_a	 =0.8
	--tint = {r=r*0.8,g=g*0.8,b=b*0.8,a=a*0.8}
	tint = {r=0.8,g=g*0.8,b=b*0.8,a=0.8}
elseif settings.startup["preset"].value == "rainbow" then
	preset = "rainbow-"
	r            =1
	g            =1
	b            =1
	a            =1
	decals_r   	=0.8
	decals_g   	=0.8
	decals_b   	=0.8
	decals_a   	=0.8
	particle_r	=1
	particle_g	=1	
	particle_b	=1	
	particle_a	=0.5
	--tint = {r=r*0.6,g=g*0.6,b=b*0.6,a=a*0.7}
	tint = {r=r*0.8,g=g*0.8,b=b*0.8,a=a*0.8}
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
	--tint = {r=r*0.6,g=g*0.6,b=b*0.6,a=a*0.7}
	tint = {r=r*0.8,g=g*0.8,b=b*0.8,a=a*0.8}
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
	--tint = {r=r*0.6,g=g*0.6,b=b*0.6,a=a*0.7}
	tint = {r=r*0.8,g=g*0.8,b=b*0.8,a=a*0.8}
elseif settings.startup["preset"].value == "puke" then
	r          	=0.29
	g          	=0.34
	b          	=0.03
	a          	=0.75
	decals_r   	=0.22
	decals_g   	=0.26
	decals_b   	=0.03
	decals_a   	=0.7
	particle_r 	=0.24
	particle_g 	=0.29
	particle_b 	=0.01
	particle_a 	=0.7
	--tint = {r=r*0.6,g=g*0.6,b=b*0.6,a=a*0.7}
	tint = {r=r*0.8,g=g*0.8,b=b*0.8,a=a*0.8}
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
	puddle_d = settings.startup["puddle-d"].value
	--tint = {r=r*0.6,g=g*0.6,b=b*0.6,a=a*0.7}
	tint = {r=r*0.8,g=g*0.8,b=b*0.8,a=a*0.8}
end

local tinter = {r=decals_r,g=decals_g,b=decals_b,a=decals_a}


tinter.a=1
--for key, tbl in pairs (data.raw.corpse) do
--	if tbl.animation and tbl.animation.layers and tbl.animation.layers[2] then
--		if  tbl.animation.layers[2].filename == "__base__/graphics/entity/biter/biter-die-mask1-01.png" and (not tbl.animation.layers[4] or tbl.animation.layers[4].filename ~= "__gore__/graphics/units/"..preset.."biter-die-mask-03.png") then
--			tbl.final_render_layer = "object"
--			local temp = table.deepcopy(tbl.animation.layers[2])
--			temp.tint = tinter
--			temp.filename = "__gore__/graphics/units/"..preset.."biter-die-mask3.png",
--			table.insert(tbl.animation.layers,temp)
--		elseif tbl.animation.layers[2].stripes and tbl.animation.layers[1].stripes[1] and tbl.animation.layers[1].stripes[1].filename == "__base__/graphics/entity/spitter/spitter-die-01.png" and (not tbl.animation.layers[3] or not tbl.animation.layers[3].stripes or tbl.animation.layers[3].stripes[1].filename ~= "__gore__/graphics/units/"..preset.."spitter-blood-1.png") then
--			tbl.final_render_layer = "object"
--			local temp = table.deepcopy(tbl.animation.layers[1])
--			temp.tint = tinter
--			temp.stripes[1].filename = "__gore__/graphics/units/"..preset.."spitter-blood-1.png"
--			temp.stripes[2].filename = "__gore__/graphics/units/"..preset.."spitter-blood-2.png"
--			temp.stripes[3].filename = "__gore__/graphics/units/"..preset.."spitter-blood-3.png"
--			temp.stripes[4].filename = "__gore__/graphics/units/"..preset.."spitter-blood-4.png"
--			table.insert(tbl.animation.layers,temp)
--		elseif tbl.animation.layers[1].filename == "__base__/graphics/entity/worm/worm-die-01.png" and (not tbl.animation.layers[3] or tbl.animation.layers[3].filename ~= "__gore__/graphics/units/"..preset.."worm-die-mask-02.png") then
--			tbl.final_render_layer = "object"
--			local temp = table.deepcopy(tbl.animation.layers[2])
--			temp.tint = tinter
--			temp.filename = "__gore__/graphics/units/"..preset.."worm-die-mask2.png"
--			table.insert(tbl.animation.layers,temp)
--		end
--	end
--end

function biter_die (scale)
return {
        filenames =
        {
          "__gore__/graphics/units17/biter/lr-"..preset.."mask01.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask02.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask03.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask04.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask05.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask06.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask07.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask08.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask09.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask10.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask11.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask12.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask13.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask14.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask15.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask16.png",
          "__gore__/graphics/units17/biter/lr-"..preset.."mask17.png",
        },
        slice = 4,
        lines_per_file = 4,
        line_length = 4,
        width = 272,
        height = 201,
        frame_count = 17,
        direction_count = 16,
        --shift= util.mul_shift(util.by_pixel(-2, -4), scale),
		shift = util.mul_shift(util.by_pixel(0, -4), scale),
        scale = scale,
		tint = tint,
        hr_version =
        {
          filenames =
          {
            "__gore__/graphics/units17/biter/"..preset.."mask01.png",
            "__gore__/graphics/units17/biter/"..preset.."mask02.png",
            "__gore__/graphics/units17/biter/"..preset.."mask03.png",
            "__gore__/graphics/units17/biter/"..preset.."mask04.png",
            "__gore__/graphics/units17/biter/"..preset.."mask05.png",
            "__gore__/graphics/units17/biter/"..preset.."mask06.png",
            "__gore__/graphics/units17/biter/"..preset.."mask07.png",
            "__gore__/graphics/units17/biter/"..preset.."mask08.png",
            "__gore__/graphics/units17/biter/"..preset.."mask09.png",
            "__gore__/graphics/units17/biter/"..preset.."mask10.png",
            "__gore__/graphics/units17/biter/"..preset.."mask11.png",
            "__gore__/graphics/units17/biter/"..preset.."mask12.png",
            "__gore__/graphics/units17/biter/"..preset.."mask13.png",
            "__gore__/graphics/units17/biter/"..preset.."mask14.png",
            "__gore__/graphics/units17/biter/"..preset.."mask15.png",
            "__gore__/graphics/units17/biter/"..preset.."mask16.png",
            "__gore__/graphics/units17/biter/"..preset.."mask17.png",
          },
          slice = 4,
          lines_per_file = 4,
          line_length = 4,
          width = 544,
          height = 402,
          frame_count = 17,
          shift = util.mul_shift(util.by_pixel(0, -4), scale),
          direction_count = 16,
          scale = 0.5 * scale,
		  tint = tint,
        }
      }
end
function spitter_die(scale)
return {
        filenames =
        {
          "__gore__/graphics/units17/spitter/lr-"..preset.."mask01.png",
          "__gore__/graphics/units17/spitter/lr-"..preset.."mask02.png",
          "__gore__/graphics/units17/spitter/lr-"..preset.."mask03.png",
          "__gore__/graphics/units17/spitter/lr-"..preset.."mask04.png",
        },
        slice = 7,
        lines_per_file = 8,
        line_length = 7,
        width = 141,
        height = 127,
        frame_count = 14,
        direction_count = 16,
        --shift= util.mul_shift(util.by_pixel(0, -16), scale),
		shift = util.mul_shift(util.by_pixel(0, -15), scale),
        scale = scale,
		tint = tint,
        hr_version =
        {
          filenames =
          {
            "__gore__/graphics/units17/spitter/"..preset.."mask01.png",
            "__gore__/graphics/units17/spitter/"..preset.."mask02.png",
            "__gore__/graphics/units17/spitter/"..preset.."mask03.png",
            "__gore__/graphics/units17/spitter/"..preset.."mask04.png",
          },
          slice = 7,
          lines_per_file = 8,
          line_length = 7,
          width = 282,
          height = 254,
          frame_count = 14,
          shift = util.mul_shift(util.by_pixel(0, -15), scale),
          direction_count = 16,
          scale = 0.5 * scale,
		  tint = tint,
        }
      }
end
 local a = 1
 local d = puddle_d
function gore_blood_puddle(opts)
return{
    sheet =
    {
      filename = "__gore__/graphics/units17/"..preset.."puddle.png",
      flags = { "low-object" },
      line_length = 4,
      variation_count = 4,
      frame_count = 1,
      width = 82,
      height = 67,
      shift = util.by_pixel(-0.5,-0.5),
      --tint = {r = 0.6 * d * a, g = 0.1 * d * a, b = 0.6 * d * a, a = a},
      tint = {r = r * d * a, g = g * d * a, b = b * d * a, a = a},
      scale = scale,
      hr_version =
      {
        filename = "__gore__/graphics/units17/hr-"..preset.."puddle.png",
        flags = { "low-object" },
        line_length = 4,
        variation_count = 4,
        frame_count = 1,
        width = 164,
        height = 134,
        shift = util.by_pixel(-0.5,-0.5),
        --tint = {r = 0.6 * d * a, g = 0.1 * d * a, b = 0.6 * d * a, a = a},
        tint = {r = r * d * a, g = g * d * a, b = b * d * a, a = a},
        scale = 0.5 * (opts.scale or 1)
      }
    }
  }
end
for key, tbl in pairs (data.raw.corpse) do
	if tbl.animation and tbl.animation.layers and tbl.animation.layers[2] then
		if  tbl.animation.layers[1].filenames and tbl.animation.layers[1].filenames[1] ==  "__base__/graphics/entity/biter/biter-die-01.png" then -- and (not tbl.animation.layers[4] or tbl.animation.layers[4].filename ~= "__gore__/graphics/units/"..preset.."biter-die-mask-03.png") then
			--tbl.final_render_layer = "object"
			if settings.startup["bodyspray"].value then
				local temp = biter_die(tbl.animation.layers[1].scale or 1)
				--temp.tint = tinte
				table.insert(tbl.animation.layers,temp)
			end
			if settings.startup["gore_hide_puddle"].value then
				tbl.ground_patch = nil
			else
				tbl.ground_patch = gore_blood_puddle{}
				tbl.time_before_removed = settings.startup["bodyduration"].value*60 --15*60*60
				tbl.ground_patch_fade_out_start=settings.startup["puddleduration"].value*60
			end
		elseif tbl.animation.layers[1].filenames and tbl.animation.layers[1].filenames[1] == "__base__/graphics/entity/spitter/spitter-die-01.png" then -- and (not tbl.animation.layers[3] or not tbl.animation.layers[3].stripes or tbl.animation.layers[3].stripes[1].filename ~= "__gore__/graphics/units/"..preset.."spitter-blood-1.png") then
			--tbl.final_render_layer = "object"
			if settings.startup["bodyspray"].value then
				local temp = spitter_die(tbl.animation.layers[1].scale or 1)
				--temp.tint = tinter
				table.insert(tbl.animation.layers,temp)
			end
		elseif tbl.animation.layers[1].filename == "__base__/graphics/entity/worm/worm-die-01.png" then -- and (not tbl.animation.layers[3] or tbl.animation.layers[3].filename ~= "__gore__/graphics/units/"..preset.."worm-die-mask-02.png") then
			--tbl.final_render_layer = "object"
			--local temp = table.deepcopy(tbl.animation.layers[2])
			--temp.tint = tinter
			--temp.filename = "__gore__/graphics/units/"..preset.."worm-die-mask2.png"
			--table.insert(tbl.animation.layers,temp)
			--table.insert(tbl.ground_patch,gore_blood_puddle{})
			tbl.time_before_removed = settings.startup["bodyduration"].value*60 --15*60*60
		elseif  tbl.animation.layers[2].filename == "__0_16_graphics__/graphics/entity/biter/biter-die-mask1.png" and (not tbl.animation.layers[4] or tbl.animation.layers[4].filename ~= "__gore__/graphics/units/"..preset.."biter-die-mask3.png") then
			tbl.final_render_layer = "object"
			local temp = table.deepcopy(tbl.animation.layers[2])
			temp.tint = tinter
			temp.filename = "__gore__/graphics/units/"..preset.."biter-die-mask3.png",
			table.insert(tbl.animation.layers,temp)
		elseif tbl.animation.layers[2].stripes and tbl.animation.layers[1].stripes[1] and tbl.animation.layers[1].stripes[1].filename == "__0_16_graphics__/graphics/entity/spitter/spitter-die-1.png" and (not tbl.animation.layers[3] or not tbl.animation.layers[3].stripes or tbl.animation.layers[3].stripes[1].filename ~= "__gore__/graphics/units/"..preset.."spitter-blood-1.png") then
			tbl.final_render_layer = "object"
			local temp = table.deepcopy(tbl.animation.layers[1])
			temp.tint = tinter
			temp.stripes[1].filename = "__gore__/graphics/units/"..preset.."spitter-blood-1.png"
			temp.stripes[2].filename = "__gore__/graphics/units/"..preset.."spitter-blood-2.png"
			temp.stripes[3].filename = "__gore__/graphics/units/"..preset.."spitter-blood-3.png"
			temp.stripes[4].filename = "__gore__/graphics/units/"..preset.."spitter-blood-4.png"
			table.insert(tbl.animation.layers,temp)
		elseif tbl.animation.layers[1].filename == "__0_16_graphics__/graphics/entity/worm/worm-die.png" and (not tbl.animation.layers[3] or tbl.animation.layers[3].filename ~= "__gore__/graphics/units/"..preset.."worm-die-mask2.png") then
			tbl.final_render_layer = "object"
			local temp = table.deepcopy(tbl.animation.layers[2])
			temp.tint = tinter
			temp.filename = "__gore__/graphics/units/"..preset.."worm-die-mask2.png"
			table.insert(tbl.animation.layers,temp)
		end
	end
	if settings.startup["gore_hide_puddle"].value then
		tbl.ground_patch = nil
	elseif tbl.ground_patch and tbl.ground_patch.sheet and tbl.ground_patch.sheet.filename and tbl.ground_patch.sheet.filename:find("puddle") or tbl.ground_patch and tbl.ground_patch.filename and tbl.ground_patch.filename:find("puddle") then
		tbl.ground_patch = gore_blood_puddle{}
		tbl.time_before_removed = settings.startup["bodyduration"].value*60 --15*60*60
		tbl.ground_patch_fade_out_start=settings.startup["puddleduration"].value*60
	end
end
