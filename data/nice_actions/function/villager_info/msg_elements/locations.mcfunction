#headline
tellraw @s {"text":" ","color":"#F5E8C9","bold":true,"italic":false}
tellraw @s {"bold":true,"color":"#F5E8C9","italic":false,"text":"Location Data:"}

#position
tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Position: "},\
{"bold":false,"color":"light_purple","italic":false,"text":"X"},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","italic":false,"nbt":"villager_data.pos.x","storage":"eden:temp"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"bold":false,"color":"green","italic":false,"text":"Y"},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","italic":false,"nbt":"villager_data.pos.y","storage":"eden:temp"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"bold":false,"color":"aqua","italic":false,"text":"Z"},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","italic":false,"nbt":"villager_data.pos.z","storage":"eden:temp"}\
]

#home loc
execute \
if data entity @n[type=minecraft:villager] Brain.memories.minecraft:home \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Home: "},\
{"text":"X","color":"light_purple","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:home.value.pos[0]"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"text":"Y","color":"green","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:home.value.pos[1]"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"text":"Z","color":"aqua","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:home.value.pos[2]"}\
]

#job loc
execute if data entity @n[type=minecraft:villager] Brain.memories.minecraft:job_site \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Job Site: "},\
{"text":"X","color":"light_purple","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:job_site.value.pos[0]"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"text":"Y","color":"green","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:job_site.value.pos[1]"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"text":"Z","color":"aqua","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:job_site.value.pos[2]"}\
]

#meeting point loc
execute if data entity @n[type=minecraft:villager] Brain.memories.minecraft:meeting_point \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Meeting Point: "},\
{"text":"X","color":"light_purple","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:meeting_point.value.pos[0]"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"text":"Y","color":"green","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:meeting_point.value.pos[1]"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" "},\
{"text":"Z","color":"aqua","bold":false,"italic":false},{"bold":false,"color":"dark_gray","italic":false,"text":":"},{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Brain.memories.minecraft:meeting_point.value.pos[2]"}\
]