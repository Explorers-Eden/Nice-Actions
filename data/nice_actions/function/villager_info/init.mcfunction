$execute unless score @s nice_actions.exp_level matches $(villager_info_cost).. run return run function nice_actions:villager_info/insufficient_level

execute as @s at @s if entity @e[type=villager,distance=..8] run return run function nice_actions:villager_info/execute with storage eden:settings nice_actions

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"No Villager within 8 blocks.","italic":false,"translate":"text.nice_actions.no_villager_within_reach"}\
]