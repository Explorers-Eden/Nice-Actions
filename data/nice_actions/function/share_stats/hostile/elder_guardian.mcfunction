execute unless score @s nice_actions.stats.killed.elder_guardian matches 1.. run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"You have not done that yet.","italic":false,"translate":"text.nice_actions.share_stats_0_score"}\
]\

execute at @a[distance=..32] run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

tellraw @a[distance=..32] [\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"selector":"@s","color":"white"},\
{"bold":false,"color":"white","fallback":" has killed ","italic":false,"translate":"text.nice_actions.share_stats_prefix_kill"},\
{"bold":true,"color":"white","italic":false,"score":{"name":"@s","objective":"nice_actions.stats.killed.elder_guardian"}},\
{"text":" ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"Elder Guardian","italic":false,"translate":"text.nice_actions.plural.elder_guardian"},\
{"text":".","color":"white","bold":false,"italic":false}\
]\

$experience add @s -$(share_stats_cost) levels