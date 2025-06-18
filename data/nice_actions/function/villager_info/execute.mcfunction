
execute as @n[type=villager] at @s run function nice_actions:villager_info/get_data
execute as @n[type=villager] at @s if data entity @s Brain.memories.minecraft:job_site.value run function nice_actions:villager_info/glowing with storage eden:temp villager_data.job_site
effect give @n[type=minecraft:villager] minecraft:glowing 11 0 true
function nice_actions:villager_info/display_msg

data remove storage eden:temp villager_data

$experience add @s -$(villager_info_cost) levels