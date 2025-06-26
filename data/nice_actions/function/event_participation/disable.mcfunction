scoreboard players set @s nice_actions.events.participate 0
execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"You are no longer participating in events.","italic":false,"translate":"text.nice_actions.events_disabled"}\
]