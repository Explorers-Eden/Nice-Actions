execute store result storage eden:temp huds.uuid_0 int 1 run scoreboard players get @s nice_actions.uuid.0
execute store result storage eden:temp huds.uuid_1 int 1 run scoreboard players get @s nice_actions.uuid.1
execute store result storage eden:temp huds.uuid_2 int 1 run scoreboard players get @s nice_actions.uuid.2
execute store result storage eden:temp huds.uuid_3 int 1 run scoreboard players get @s nice_actions.uuid.3

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

data modify storage eden:temp huds.light set value 0
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":1}}}} run data modify storage eden:temp huds.light set value 1
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":2}}}} run data modify storage eden:temp huds.light set value 2
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":3}}}} run data modify storage eden:temp huds.light set value 3
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":4}}}} run data modify storage eden:temp huds.light set value 4
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":5}}}} run data modify storage eden:temp huds.light set value 5
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":6}}}} run data modify storage eden:temp huds.light set value 6
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":7}}}} run data modify storage eden:temp huds.light set value 7
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":8}}}} run data modify storage eden:temp huds.light set value 8
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":9}}}} run data modify storage eden:temp huds.light set value 9
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":10}}}} run data modify storage eden:temp huds.light set value 10
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":11}}}} run data modify storage eden:temp huds.light set value 11
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":12}}}} run data modify storage eden:temp huds.light set value 12
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":13}}}} run data modify storage eden:temp huds.light set value 13
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":14}}}} run data modify storage eden:temp huds.light set value 14
execute if predicate {"type":"minecraft:location_check","predicate":{"light":{"light":{"min":15}}}} run data modify storage eden:temp huds.light set value 15

execute store result score $light nice_actions.technical run data get storage eden:temp huds.light
execute if score $light nice_actions.technical matches 0 run data modify storage eden:temp huds.light_color set value "#FF4A4A"
execute if score $light nice_actions.technical matches 1 run data modify storage eden:temp huds.light_color set value "#FF564B"
execute if score $light nice_actions.technical matches 2 run data modify storage eden:temp huds.light_color set value "#FF624B"
execute if score $light nice_actions.technical matches 3 run data modify storage eden:temp huds.light_color set value "#FF6E4C"
execute if score $light nice_actions.technical matches 4 run data modify storage eden:temp huds.light_color set value "#FF7A4D"
execute if score $light nice_actions.technical matches 5 run data modify storage eden:temp huds.light_color set value "#FF864E"
execute if score $light nice_actions.technical matches 6 run data modify storage eden:temp huds.light_color set value "#FF924E"
execute if score $light nice_actions.technical matches 7 run data modify storage eden:temp huds.light_color set value "#FF9E4F"
execute if score $light nice_actions.technical matches 8 run data modify storage eden:temp huds.light_color set value "#FFAB50"
execute if score $light nice_actions.technical matches 9 run data modify storage eden:temp huds.light_color set value "#FFB751"
execute if score $light nice_actions.technical matches 10 run data modify storage eden:temp huds.light_color set value "#FFC351"
execute if score $light nice_actions.technical matches 11 run data modify storage eden:temp huds.light_color set value "#FFCF52"
execute if score $light nice_actions.technical matches 12 run data modify storage eden:temp huds.light_color set value "#FFDB53"
execute if score $light nice_actions.technical matches 13 run data modify storage eden:temp huds.light_color set value "#FFE754"
execute if score $light nice_actions.technical matches 14 run data modify storage eden:temp huds.light_color set value "#FFF354"
execute if score $light nice_actions.technical matches 15 run data modify storage eden:temp huds.light_color set value "#FFFF55"

function nice_actions:coords_hud/update/display/update with storage eden:temp huds