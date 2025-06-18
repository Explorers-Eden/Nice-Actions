$execute in minecraft:overworld positioned $(posx) ~ $(posz) run spreadplayers ~ ~ 128 128 under $(ylimit) false @s

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

tellraw @s [\
{"text":"▊ ","color":"#69FF5E","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Teleported randomly.","italic":false,"translate":"text.nice_actions.rtp_successful"}\
]

scoreboard players set @s nice_actions.rtp.cooldown 1
scoreboard players set @s nice_actions.rtp.timer 0

$experience add @s -$(cost) levels

data remove storage eden:temp rtp