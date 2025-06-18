$execute in $(dimension) run teleport $(x) $(y) $(z)

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

tellraw @s [\
{"text":"▊ ","color":"#69FF5E","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Teleported back home.","italic":false,"translate":"text.nice_actions.tp_home_successful"}\
]

scoreboard players set @s nice_actions.tp_home.cooldown 1
scoreboard players set @s nice_actions.tp_home.timer 0

$experience add @s -$(cost) levels