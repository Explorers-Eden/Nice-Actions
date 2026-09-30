scoreboard players remove @s nice_actions.warmup.ticks 1

execute if score @s nice_actions.warmup.damage matches 1.. run return run function nice_actions:warmup/cancel

execute store result score $warmup_x nice_actions.technical run data get entity @s Pos[0] 10
execute store result score $warmup_y nice_actions.technical run data get entity @s Pos[1] 10
execute store result score $warmup_z nice_actions.technical run data get entity @s Pos[2] 10
scoreboard players operation $warmup_x nice_actions.technical -= @s nice_actions.warmup.x
scoreboard players operation $warmup_y nice_actions.technical -= @s nice_actions.warmup.y
scoreboard players operation $warmup_z nice_actions.technical -= @s nice_actions.warmup.z
execute unless score $warmup_x nice_actions.technical matches -5..5 run return run function nice_actions:warmup/cancel
execute unless score $warmup_y nice_actions.technical matches -15..15 run return run function nice_actions:warmup/cancel
execute unless score $warmup_z nice_actions.technical matches -5..5 run return run function nice_actions:warmup/cancel

execute if score @s nice_actions.warmup.ticks matches ..0 run return run function nice_actions:warmup/finish

scoreboard players operation $warmup_mod nice_actions.technical = @s nice_actions.warmup.ticks
scoreboard players operation $warmup_mod nice_actions.technical %= $20 nice_actions.technical
execute if score $warmup_mod nice_actions.technical matches 0 run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

particle minecraft:reverse_portal ~ ~.1 ~ .5 0 .5 0 4
particle minecraft:portal ~ ~1 ~ .3 .5 .3 .5 2

scoreboard players operation $warmup_sec nice_actions.technical = @s nice_actions.warmup.ticks
scoreboard players add $warmup_sec nice_actions.technical 19
scoreboard players operation $warmup_sec nice_actions.technical /= $20 nice_actions.technical
title @s actionbar [\
{"bold":false,"color":"#69FF5E","fallback":"Teleporting in","italic":false,"translate":"text.nice_actions.warmup"},\
{"bold":false,"color":"#69FF5E","italic":false,"text":" "},\
{"bold":false,"color":"#69FF5E","italic":false,"score":{"name":"$warmup_sec","objective":"nice_actions.technical"}},\
{"bold":false,"color":"#69FF5E","italic":false,"text":"..."}\
]
