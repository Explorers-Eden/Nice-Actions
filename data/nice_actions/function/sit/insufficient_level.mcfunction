execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Insufficient EXP Level","italic":false,"translate":"text.nice_actions.insufficient_level"},\
{"bold":false,"color":"white","italic":false,"text":" ("},\
{"bold":false,"color":"white","fallback":"Cost: ","italic":false,"translate":"text.nice_actions.cost"},\
{"bold":false,"color":"white","nbt":"nice_actions.sit_cost","storage":"eden:settings"},\
{"bold":false,"color":"white","italic":false,"text":")."}\
]