execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Teleport to Spawn is on cooldown.","italic":false,"translate":"text.nice_actions.tp_spawn_cooldown"}\
]