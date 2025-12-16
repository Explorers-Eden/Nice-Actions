$scoreboard players set $rtp_cooldown nice_actions.technical $(rtp_cooldown)
scoreboard players operation $rtp_cooldown nice_actions.technical -= @s nice_actions.rtp.timer

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Random teleport is on cooldown.","italic":false,"translate":"text.nice_actions.rtp_cooldown"},\
{"bold":false,"color":"gray","italic":false,"text":" ("},\
{"bold":false,"color":"gray","italic":false,"score":{"name":"$rtp_cooldown","objective":"nice_actions.technical"}},\
{"bold":false,"color":"gray","italic":false,"text":" seconds left)"}\
]