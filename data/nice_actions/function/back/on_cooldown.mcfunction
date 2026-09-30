$scoreboard players set $back_cooldown nice_actions.technical $(back_cooldown)
scoreboard players operation $back_cooldown nice_actions.technical -= @s nice_actions.back.timer

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"Back teleport is on cooldown.","italic":false,"translate":"text.nice_actions.back_cooldown"},\
{"bold":false,"color":"gray","italic":false,"text":" ("},\
{"bold":false,"color":"gray","italic":false,"score":{"name":"$back_cooldown","objective":"nice_actions.technical"}},\
{"bold":false,"color":"gray","italic":false,"text":" seconds left)"}\
]
