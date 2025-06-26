scoreboard players set @s nice_actions.events.participate 1
execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

tellraw @s [\
{"text":"▊ ","color":"#69FF5E","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"You are now participating in events.","italic":false,"translate":"text.nice_actions.events_enabled"}\
]