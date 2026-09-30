$execute as @e[type=!player,distance=..24] \
    if data entity @s leash{UUID:$(uuid)} \
    in $(dimension) \
        run tp $(x) $(y) $(z)
        
$execute as @e[type=#nice_actions:is_pet,distance=..24] \
    if data entity @s {Owner:$(uuid)} \
    unless data entity @s {Sitting:1b} \
    in $(dimension) \
        run tp $(x) $(y) $(z)

$execute at @s unless predicate nice_actions:entity/is_riding in $(dimension) run tp $(x) $(y) $(z)
$execute at @s if predicate nice_actions:entity/is_riding in $(dimension) on vehicle run tp @s $(x) $(y) $(z)

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

tellraw @s [\
{"text":"▊ ","color":"#69FF5E","bold":false,"italic":false},\
{"bold":false,"color":"white","fallback":"Teleported back.","italic":false,"translate":"text.nice_actions.back_successful"}\
]

scoreboard players set @s nice_actions.back.cooldown 1
scoreboard players set @s nice_actions.back.timer 0

$experience add @s -$(cost) levels
