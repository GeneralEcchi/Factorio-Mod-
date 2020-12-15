local splashes = settings.startup["gore_custom_splashes"].value
local decals = settings.startup["gore_custom_decals"].value

script.on_event(defines.events.on_entity_died, function(event)
	local entity = event.entity
	if not entity.has_flag("breaths-air") or entity.type == "tree" then return end
	if splashes then
		local rnd = math.floor(math.random()*6.6+1)
		entity.surface.create_entity({
					name="blood"..rnd,
					position=entity.position})
	end
	if decals then
		local rnd = math.floor(math.random()*6.99+1)
		entity.surface.create_entity({
					name="splatter"..rnd,
					position=entity.position})
	end
end)

if settings.startup["gore-damage-bleeding"].value then
	script.on_event(defines.events.on_entity_damaged, function(event)
	if not event.entity.has_flag("breaths-air") then return end
		local max_health = event.entity.prototype.max_health
		if event.final_damage_amount > max_health/250 then
			local damage_type_name = event.damage_type.name
			if(damage_type_name == "physical" ) then-- or damage_type_name == "laser") then
				local blood_count = math.floor(math.max(0,math.min(34,math.min(math.log(max_health, 4)*4,event.final_damage_amount/max_health*20)+math.random())))
				if (math.random()+0.34)*(blood_count/3+1) > 1.2 or max_health == 250 then -- 250 = character
					--game.print(game.tick.." "..blood_count)
					--if damage_type_name == "physical" then
						event.entity.surface.create_entity({
							name="blood-explosion-"..blood_count,
							position=event.entity.position
						})
						
					--else
					--	event.entity.surface.create_entity({
					--		name="blood-explosion-0",
					--		position=event.entity.position
					--	})  
					--end
				end
			end
		end
	end)
	script.set_event_filter(defines.events.on_entity_damaged, {{filter = "type", type = "unit"},{filter = "type", type = "character"}})
end