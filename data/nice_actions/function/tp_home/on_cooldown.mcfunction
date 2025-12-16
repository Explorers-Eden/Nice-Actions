$scoreboard players set $tp_home_cooldown nice_actions.technical $(tp_home_cooldown)
scoreboard players operation $tp_home_cooldown nice_actions.technical -= @s nice_actions.tp_home.timer

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Home teleport is on cooldown.","italic":false,"translate":"text.nice_actions.tp_home_cooldown"},\
{"bold":false,"color":"gray","italic":false,"text":" ("},\
{"bold":false,"color":"gray","italic":false,"score":{"name":"$tp_home_cooldown","objective":"nice_actions.technical"}},\
{"bold":false,"color":"gray","italic":false,"text":" seconds left)"}\
]