$data modify storage eden:temp death_coords.grave.x set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.x
$data modify storage eden:temp death_coords.grave.y set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.y
$data modify storage eden:temp death_coords.grave.z set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.z
$data modify storage eden:temp death_coords.grave.dimension set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.dimension

execute if data storage eden:temp death_coords.grave{dimension:"minecraft:overworld"} run data modify storage eden:temp death_coords.grave.dimension set value "Overworld"
execute if data storage eden:temp death_coords.grave{dimension:"minecraft:the_nether"} run data modify storage eden:temp death_coords.grave.dimension set value "The Nether"
execute if data storage eden:temp death_coords.grave{dimension:"minecraft:the_end"} run data modify storage eden:temp death_coords.grave.dimension set value "The End"
execute if data storage eden:temp death_coords.grave{dimension:"nice_actions:astral_plane"} run data modify storage eden:temp death_coords.grave.dimension set value "Astral Plane"
execute if data storage eden:temp death_coords.grave{dimension:"kattersstructures:deep_blue"} run data modify storage eden:temp death_coords.grave.dimension set value "Deep Blue"

function nice_actions:death_coords/last_grave/display_message with storage eden:temp death_coords.grave