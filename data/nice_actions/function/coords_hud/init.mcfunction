scoreboard players add @s nice_actions.hud.coords 0
execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

execute if score @s nice_actions.hud.coords matches 1 run return run scoreboard players set @s nice_actions.hud.coords 0
scoreboard players set @s nice_actions.hud.coords 1
execute store result score @s nice_actions.uuid.0 run data get entity @s UUID[0]
execute store result score @s nice_actions.uuid.1 run data get entity @s UUID[1]
execute store result score @s nice_actions.uuid.2 run data get entity @s UUID[2]
execute store result score @s nice_actions.uuid.3 run data get entity @s UUID[3]