function nice_actions:warmup/clear

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
title @s actionbar [\
{"bold":false,"color":"#FF4A4A","fallback":"Teleport cancelled.","italic":false,"translate":"text.nice_actions.warmup_cancelled"}\
]
