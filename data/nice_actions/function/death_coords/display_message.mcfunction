execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
$tellraw @s [\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"Position of Last Death:","italic":false,"translate":"text.nice_actions.pos_last_death"},\
{"text":" X: ","color":"dark_purple","bold":false,"italic":false},\
{"text":"$(x) ","color":"white","bold":false,"italic":false},\
{"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
{"text":"$(y) ","color":"white","bold":false,"italic":false},\
{"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
{"text":"$(z)","color":"white","bold":false,"italic":false},\
{"text":" | ","color":"dark_gray","bold":false,"italic":false},\
{"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
{"text":"$(dimension)","color":"white","bold":false,"italic":false}\
]


$experience add @s -$(cost) levels