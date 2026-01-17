data modify storage eden:temp huds.uuid_0 set from entity @s UUID[0]
data modify storage eden:temp huds.uuid_1 set from entity @s UUID[1]
data modify storage eden:temp huds.uuid_2 set from entity @s UUID[2]
data modify storage eden:temp huds.uuid_3 set from entity @s UUID[3]

execute store result storage eden:temp huds.posx int 1 run data get entity @s Pos[0]
execute store result storage eden:temp huds.posy int 1 run data get entity @s Pos[1]
execute store result storage eden:temp huds.posz int 1 run data get entity @s Pos[2]

data modify storage eden:temp huds.dimension set from entity @s Dimension

function nice_actions:coords_hud/update/display/update with storage eden:temp huds