execute if data entity @n[type=villager] VillagerData{level: 1} run function villager_data:msg_elements/level/novice
execute if data entity @n[type=villager] VillagerData{level: 2} run function villager_data:msg_elements/level/apprentice
execute if data entity @n[type=villager] VillagerData{level: 3} run function villager_data:msg_elements/level/journeyman
execute if data entity @n[type=villager] VillagerData{level: 4} run function villager_data:msg_elements/level/expert
execute if data entity @n[type=villager] VillagerData{level: 5} run function villager_data:msg_elements/level/master

execute \
unless data entity @n[type=villager] VillagerData{level: 1} \
unless data entity @n[type=villager] VillagerData{level: 2} \
unless data entity @n[type=villager] VillagerData{level: 3} \
unless data entity @n[type=villager] VillagerData{level: 4} \
unless data entity @n[type=villager] VillagerData{level: 5} \
run function villager_data:msg_elements/level/other