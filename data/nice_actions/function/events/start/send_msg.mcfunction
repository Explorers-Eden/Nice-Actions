execute at @a[scores={nice_actions.events.participate=1}] run playsound minecraft:entity.player.levelup neutral @s ~ ~ ~ .5 1.5

execute if data storage eden:settings nice_actions.events.misc{event_msg:"title"} run \
title @a[scores={nice_actions.events.participate=1}] title \
{"bold":false,"color":"#54FF71","italic":false,"text":"Daily Event Started"}

$execute if data storage eden:settings nice_actions.events.misc{event_msg:"title"} run \
title @a[scores={nice_actions.events.participate=1}] subtitle \
[\
{"bold":false,"color":"gray","italic":false,"text":"- "},\
$(msg),\
{"bold":false,"color":"gray","italic":false,"text":" -"}\
]

$execute if data storage eden:settings nice_actions.events.misc{event_msg:"actionbar"} run \
title @a[scores={nice_actions.events.participate=1}] actionbar \
[\
{"bold":false,"color":"gray","italic":false,"text":"- "},\
{"bold":false,"color":"white","italic":false,"text":"Daily Event Started: "},\
$(msg),\
{"bold":false,"color":"gray","italic":false,"text":" -"}\
]

$execute if data storage eden:settings nice_actions.events.misc{event_msg:"chat"} run \
tellraw @a[scores={nice_actions.events.participate=1}] \
[\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","italic":false,"text":"Daily Event Started: "},\
$(msg)\
]