execute unless score @s nice_actions.stats.travel.fly matches 1.. run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"You have not done that yet.","italic":false,"translate":"text.nice_actions.share_stats_0_score"}\
]\

scoreboard players operation $temp_value_travel_stat eden.technical = @s nice_actions.stats.travel.fly
execute store result score $travel_msg_output eden.technical run scoreboard players operation $temp_value_travel_stat eden.technical /= $100 eden.technical

execute at @a[distance=..32] run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

tellraw @a[distance=..32] [\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"selector":"@s","color":"white"},\
{"bold":false,"color":"white","text":" flew ","italic":false},\
{"bold":true,"color":"white","italic":false,"score":{"name":"$travel_msg_output","objective":"eden.technical"}},\
{"text":" ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"blocks","italic":false,"translate":"text.nice_actions.blocks"},\
{"text":".","color":"white","bold":false,"italic":false}\
]\

$experience add @s -$(share_stats_cost) levels