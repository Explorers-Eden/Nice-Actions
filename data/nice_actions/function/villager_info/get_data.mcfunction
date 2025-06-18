execute store result storage eden:temp villager_data.pos.x int 1 run data get entity @s Pos[0]
execute store result storage eden:temp villager_data.pos.y int 1 run data get entity @s Pos[1]
execute store result storage eden:temp villager_data.pos.z int 1 run data get entity @s Pos[2]

data modify storage eden:temp villager_data.job_site.x set from entity @s Brain.memories.minecraft:job_site.value.pos[0]
data modify storage eden:temp villager_data.job_site.y set from entity @s Brain.memories.minecraft:job_site.value.pos[1]
data modify storage eden:temp villager_data.job_site.z set from entity @s Brain.memories.minecraft:job_site.value.pos[2]

execute unless data entity @s CustomName run data modify storage eden:temp villager_data.name set value Villager
execute if data entity @s CustomName run data modify storage eden:temp villager_data.name set from entity @s CustomName
execute if data entity @s CustomName.text run data modify storage eden:temp villager_data.name set from entity @s CustomName.text
