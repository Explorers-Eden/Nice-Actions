tellraw @a[scores={nice_actions.events.participate=1}] [\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","italic":false,"translate":"text.nice_actions.events.leaderboard","fallback":"Event Leaderboard"}\
]
execute if entity @a[tag=nice_actions.events.rank1] run tellraw @a[scores={nice_actions.events.participate=1}] [\
{"bold":false,"color":"gold","italic":false,"text":"1. "},\
{"bold":false,"color":"white","italic":false,"selector":"@a[tag=nice_actions.events.rank1]"},\
{"bold":false,"color":"gray","italic":false,"text":" - "},\
{"bold":false,"color":"gold","italic":false,"score":{"name":"@a[tag=nice_actions.events.rank1,limit=1]","objective":"nice_actions.events.counter"}}\
]
execute if entity @a[tag=nice_actions.events.rank2] run tellraw @a[scores={nice_actions.events.participate=1}] [\
{"bold":false,"color":"#C0C0C0","italic":false,"text":"2. "},\
{"bold":false,"color":"white","italic":false,"selector":"@a[tag=nice_actions.events.rank2]"},\
{"bold":false,"color":"gray","italic":false,"text":" - "},\
{"bold":false,"color":"#C0C0C0","italic":false,"score":{"name":"@a[tag=nice_actions.events.rank2,limit=1]","objective":"nice_actions.events.counter"}}\
]
execute if entity @a[tag=nice_actions.events.rank3] run tellraw @a[scores={nice_actions.events.participate=1}] [\
{"bold":false,"color":"#CD7F32","italic":false,"text":"3. "},\
{"bold":false,"color":"white","italic":false,"selector":"@a[tag=nice_actions.events.rank3]"},\
{"bold":false,"color":"gray","italic":false,"text":" - "},\
{"bold":false,"color":"#CD7F32","italic":false,"score":{"name":"@a[tag=nice_actions.events.rank3,limit=1]","objective":"nice_actions.events.counter"}}\
]

execute as @a[scores={nice_actions.events.participate=1}] at @s run playsound minecraft:ui.toast.challenge_complete neutral @s ~ ~ ~ .2 1.5
