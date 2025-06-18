$execute in $(spawn_dimension) run teleport $(spawn_x) $(spawn_y) $(spawn_z)

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

tellraw @s [\
{"text":"▊ ","color":"#69FF5E","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Teleported to spawn.","italic":false,"translate":"text.nice_actions.tp_spawn_successful"}\
]

scoreboard players set @s nice_actions.tp_spawn.cooldown 1
scoreboard players set @s nice_actions.tp_spawn.timer 0

$experience add @s -$(tp_spawn_cost) levels