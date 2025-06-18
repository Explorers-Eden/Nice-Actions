$execute unless score @s nice_actions.exp_level matches $(horse_info_cost).. run return run function nice_actions:horse_info/insufficient_level

execute as @s at @s if entity @e[type=horse,distance=..8] run return run function nice_actions:horse_info/get_data

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"No Horse within 8 blocks.","italic":false,"translate":"text.nice_actions.no_horse_within_reach"}\
]