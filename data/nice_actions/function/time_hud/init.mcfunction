scoreboard players add @s nice_actions.hud.time 0
execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

execute if score @s nice_actions.hud.time matches 1 run return run scoreboard players set @s nice_actions.hud.time 0
execute if score @s nice_actions.hud.time matches 0 run return run scoreboard players set @s nice_actions.hud.time 1