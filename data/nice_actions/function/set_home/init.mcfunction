$execute unless score @s nice_actions.exp_level matches $(set_home_cost).. run return run function nice_actions:set_home/insufficient_level

data modify storage eden:temp player.uuid_0 set from entity @s UUID[0]
data modify storage eden:temp player.uuid_1 set from entity @s UUID[1]
data modify storage eden:temp player.uuid_2 set from entity @s UUID[2]
data modify storage eden:temp player.uuid_3 set from entity @s UUID[3]

function nice_actions:set_home/save_home with storage eden:temp player

data remove storage eden:temp player

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
tellraw @s [\
{"text":"▊ ","color":"#69FF5E","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Home successfully set to current position.","italic":false,"translate":"text.nice_actions.set_home_successful"}\
]

$experience add @s -$(set_home_cost) levels