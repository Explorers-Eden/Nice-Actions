execute if entity @s[tag=nice_actions.warmup.active] run return fail

$scoreboard players set @s nice_actions.warmup.action $(action)
execute if data storage eden:settings nice_actions{warmup:0} run return run function nice_actions:warmup/finish

tag @s add nice_actions.warmup.active
execute store result score @s nice_actions.warmup.ticks run data get storage eden:settings nice_actions.warmup 20
execute store result score @s nice_actions.warmup.x run data get entity @s Pos[0] 10
execute store result score @s nice_actions.warmup.y run data get entity @s Pos[1] 10
execute store result score @s nice_actions.warmup.z run data get entity @s Pos[2] 10
scoreboard players set @s nice_actions.warmup.damage 0
scoreboard players reset @s nice_actions.warmup.left

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
schedule function nice_actions:warmup/tick 1t
