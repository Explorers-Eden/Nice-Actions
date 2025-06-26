scoreboard players add @s nice_actions.events.participate 0

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

execute if score @s nice_actions.events.participate matches 0 run return run function nice_actions:event_participation/enable
execute if score @s nice_actions.events.participate matches 1 run return run function nice_actions:event_participation/disable