execute unless score @s nice_actions.stats.mined.gold_ore matches 1.. run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"You have not done that yet.","italic":false,"translate":"text.nice_actions.share_stats_0_score"}\
]\

execute at @a[distance=..32] run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

tellraw @a[distance=..32] [\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"selector":"@s","color":"white"},\
{"bold":false,"color":"white","fallback":" has mined ","italic":false,"translate":"text.nice_actions.share_stats_prefix_mined"},\
{"bold":true,"color":"white","italic":false,"score":{"name":"@s","objective":"nice_actions.stats.mined.gold_ore"}},\
{"text":" ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","italic":false,"translate":"block.minecraft.gold_ore"},\
{"text":" ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"blocks","italic":false,"translate":"text.nice_actions.blocks"},\
{"text":".","color":"white","bold":false,"italic":false}\
]\

$experience add @s -$(share_stats_cost) levels