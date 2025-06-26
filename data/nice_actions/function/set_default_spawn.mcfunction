execute if data storage eden:settings nice_actions.spawn_dimension run return fail

execute store result storage eden:settings nice_actions.spawn_x int 1 run data get entity @s Pos[0]
execute store result storage eden:settings nice_actions.spawn_y int 1 run data get entity @s Pos[1]
execute store result storage eden:settings nice_actions.spawn_z int 1 run data get entity @s Pos[2]
data modify storage eden:settings nice_actions.spawn_dimension set from entity @s Dimension