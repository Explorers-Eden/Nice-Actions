playsound minecraft:ui.toast.challenge_complete neutral @s ~ ~ ~ .2 2

execute anchored feet positioned ~ ~ ~ run particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0.03 20
execute anchored feet positioned ~ ~ ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.03 20

$loot spawn ~ ~ ~ loot $(loot_table)

execute if data storage eden:settings nice_actions.events.misc{event_msg:"title"} run \
title @a[scores={nice_actions.events.participate=1}] title \
{"bold":false,"color":"#54FF71","italic":false,"text":"Event completed!"}

execute if data storage eden:settings nice_actions.events.misc{event_msg:"title"} run \
title @a[scores={nice_actions.events.participate=1}] subtitle \
[\
{"bold":false,"color":"gray","italic":false,"text":"- "},\
{"bold":false,"color":"white","italic":false,"text":"Enjoy Your Reward"},\
{"bold":false,"color":"gray","italic":false,"text":" -"}\
]

execute if data storage eden:settings nice_actions.events.misc{event_msg:"actionbar"} run \
title @a[scores={nice_actions.events.participate=1}] actionbar \
[\
{"bold":false,"color":"gray","italic":false,"text":"- "},\
{"bold":false,"color":"white","italic":false,"text":"Event completed!"},\
{"bold":false,"color":"gray","italic":false,"text":" -"}\
]

execute if data storage eden:settings nice_actions.events.misc{event_msg:"chat"} run \
tellraw @a[scores={nice_actions.events.participate=1}] \
[\
{"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
{"bold":false,"color":"white","italic":false,"text":"Event completed: Enjoy Your Reward"}\
]