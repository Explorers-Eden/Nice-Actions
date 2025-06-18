execute if data entity @n[type=minecraft:villager] Inventory[0] run tellraw @s {"text":" ","color":"#F5E8C9","bold":true,"italic":false}
execute if data entity @n[type=minecraft:villager] Inventory[0] run tellraw @s {"bold":true,"color":"#F5E8C9","italic":false,"text":"Inventory Data:"}

execute \
if data entity @n[type=minecraft:villager] Inventory[0] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 1: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[0].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[0].id"}\
]

execute \
if data entity @n[type=minecraft:villager] Inventory[1] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 2: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[1].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[1].id"}\
]

execute \
if data entity @n[type=minecraft:villager] Inventory[2] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 3: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[2].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[2].id"}\
]

execute \
if data entity @n[type=minecraft:villager] Inventory[3] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 4: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[3].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[3].id"}\
]

execute \
if data entity @n[type=minecraft:villager] Inventory[4] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 5: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[4].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[4].id"}\
]

execute \
if data entity @n[type=minecraft:villager] Inventory[5] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 6: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[5].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[5].id"}\
]

execute \
if data entity @n[type=minecraft:villager] Inventory[6] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 7: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[6].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[6].id"}\
]

execute \
if data entity @n[type=minecraft:villager] Inventory[7] \
run tellraw @s [\
{"bold":false,"color":"white","italic":false,"text":"• Slot 8: "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[7].count"},\
{"bold":false,"color":"gray","italic":false,"text":"x "},\
{"bold":false,"color":"gray","entity":"@n[type=villager]","italic":false,"nbt":"Inventory[7].id"}\
]
