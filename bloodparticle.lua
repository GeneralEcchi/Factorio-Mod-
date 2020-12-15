function gore_blood_particle_shadow(opts)
return {
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-1.png",
        priority = "extra-high",
        width = 5,
        height = 6,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-2.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-3.png",
        priority = "extra-high",
        width = 4,
        height = 7,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-4.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-5.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-6.png",
        priority = "extra-high",
        width = 7,
        height = 3,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-7.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-8.png",
        priority = "extra-high",
        width = 9,
        height = 10,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-9.png",
        priority = "extra-high",
        width = 7,
        height = 4,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-10.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-11.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-12.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      },
      {
        filename = "__gore__/graphics/blood-particle/blood-particle-13.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale,
        tint = {r = 0, g = 0, b = 0}
      }
    }
end


function gore_blood_particle(opts)
return
    {
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-1.png",
        priority = "extra-high",
        width = 5,
        height = 6,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-2.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-3.png",
        priority = "extra-high",
        width = 4,
        height = 7,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-4.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-5.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-6.png",
        priority = "extra-high",
        width = 7,
        height = 3,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-7.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-8.png",
        priority = "extra-high",
        width = 9,
        height = 1,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-9.png",
        priority = "extra-high",
        width = 7,
        height = 4,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-10.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-11.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-12.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      },
      {
        filename = "__gore__/graphics/blood-particle/"..opts.preset.."blood-particle-13.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = opts.scale or 1,
        tint =  opts.tint,
		blend_mode = opts.blend_mode,
		premul_alpha = opts.premul_alpha
      }
    }
end