tellraw @s {"bold":true,"color":"#F5E8C9","italic":false,"nbt":"villager_data.name","storage":"eden:temp"}
execute if data entity @n[type=villager] VillagerData{type: "minecraft:desert"} run function nice_actions:villager_info/msg_elements/profession/desert
execute if data entity @n[type=villager] VillagerData{type: "minecraft:jungle"} run function nice_actions:villager_info/msg_elements/profession/jungle
execute if data entity @n[type=villager] VillagerData{type: "minecraft:plains"} run function nice_actions:villager_info/msg_elements/profession/plains
execute if data entity @n[type=villager] VillagerData{type: "minecraft:savanna"} run function nice_actions:villager_info/msg_elements/profession/savanna
execute if data entity @n[type=villager] VillagerData{type: "minecraft:snow"} run function nice_actions:villager_info/msg_elements/profession/snow
execute if data entity @n[type=villager] VillagerData{type: "minecraft:swamp"} run function nice_actions:villager_info/msg_elements/profession/swamp
execute if data entity @n[type=villager] VillagerData{type: "minecraft:taiga"} run function nice_actions:villager_info/msg_elements/profession/taiga