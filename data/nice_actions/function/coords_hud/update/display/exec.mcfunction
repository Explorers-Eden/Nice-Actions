data modify storage eden:temp huds.uuid_0 set from entity @s UUID[0]
data modify storage eden:temp huds.uuid_1 set from entity @s UUID[1]
data modify storage eden:temp huds.uuid_2 set from entity @s UUID[2]
data modify storage eden:temp huds.uuid_3 set from entity @s UUID[3]

execute store result storage eden:temp huds.posx int 1 run data get entity @s Pos[0]
execute store result storage eden:temp huds.posy int 1 run data get entity @s Pos[1]
execute store result storage eden:temp huds.posz int 1 run data get entity @s Pos[2]

data modify storage eden:temp huds.color set value "white"
execute if data entity @s {Dimension:"minecraft:overworld"} run data modify storage eden:temp huds.color set value "green"
execute if data entity @s {Dimension:"minecraft:the_nether"} run data modify storage eden:temp huds.color set value "green"
execute if data entity @s {Dimension:"minecraft:the_end"} run data modify storage eden:temp huds.color set value "green"
execute if data entity @s {Dimension:"kattersstructures:deep_blue"} run data modify storage eden:temp huds.color set value "green"

execute as @s[y_rotation=157.5..-157.5] run data modify storage eden:temp huds.direction set value "North"
execute as @s[y_rotation=-157.5..-112.5] run data modify storage eden:temp huds.direction set value "North East"
execute as @s[y_rotation=-112.5..-67.5] run data modify storage eden:temp huds.direction set value "East"
execute as @s[y_rotation=-67.5..-22.5] run data modify storage eden:temp huds.direction set value "South East"
execute as @s[y_rotation=-22.5..22.5] run data modify storage eden:temp huds.direction set value "South"
execute as @s[y_rotation=22.5..67.5] run data modify storage eden:temp huds.direction set value "South West"
execute as @s[y_rotation=67.5..112.5] run data modify storage eden:temp huds.direction set value "West"
execute as @s[y_rotation=112.5..157.5] run data modify storage eden:temp huds.direction set value "North West"

function nice_actions:coords_hud/update/display/update with storage eden:temp huds