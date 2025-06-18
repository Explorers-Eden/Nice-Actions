execute at @a run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

tellraw @a [\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"selector":"@s","color":"white"},\
{"bold":false,"color":"white","fallback":" is currently here:","italic":false,"translate":"text.nice_actions.send_coords"},\
]\

$tellraw @a [\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
{"text":"$(x) ","color":"white","bold":false,"italic":false},\
{"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
{"text":"$(y) ","color":"white","bold":false,"italic":false},\
{"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
{"text":"$(z)","color":"white","bold":false,"italic":false},\
{"text":" | ","color":"dark_gray","bold":false,"italic":false},\
{"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
{"text":"$(dimension)","color":"white","bold":false,"italic":false}\
]\


effect give @s minecraft:glowing 15 0 true
$experience add @s -$(cost) levels