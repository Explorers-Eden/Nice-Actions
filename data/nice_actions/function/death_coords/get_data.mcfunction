## Last Death Location
data modify storage eden:temp death_coords.x set from entity @s LastDeathLocation.pos[0]
data modify storage eden:temp death_coords.y set from entity @s LastDeathLocation.pos[1]
data modify storage eden:temp death_coords.z set from entity @s LastDeathLocation.pos[2]
data modify storage eden:temp death_coords.dimension set from entity @s LastDeathLocation.dimension

execute if data entity @s LastDeathLocation{dimension:"minecraft:overworld"} run data modify storage eden:temp death_coords.dimension set value "Overworld"
execute if data entity @s LastDeathLocation{dimension:"minecraft:the_nether"} run data modify storage eden:temp death_coords.dimension set value "The Nether"
execute if data entity @s LastDeathLocation{dimension:"minecraft:the_end"} run data modify storage eden:temp death_coords.dimension set value "The End"
execute if data entity @s LastDeathLocation{dimension:"nice_actions:astral_plane"} run data modify storage eden:temp death_coords.dimension set value "Astral Plane"
execute if data entity @s LastDeathLocation{dimension:"kattersstructures:deep_blue"} run data modify storage eden:temp death_coords.dimension set value "Deep Blue"

data modify storage eden:temp death_coords.cost set from storage eden:settings nice_actions.death_coords_cost

execute unless data storage eden:settings keepinv{grave_status:"enabled"} run function nice_actions:death_coords/display_message with storage eden:temp death_coords

## Last Grave Location (Nice Keep Inventory)
execute if data storage eden:settings keepinv{grave_status:"enabled"} run function nice_actions:death_coords/last_grave/init