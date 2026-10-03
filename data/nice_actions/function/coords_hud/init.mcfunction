scoreboard players add @s nice_actions.hud.coords 0
execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

execute if score @s nice_actions.hud.coords matches 1 run return run scoreboard players set @s nice_actions.hud.coords 0
scoreboard players set @s nice_actions.hud.coords 1
advancement grant @s only eden:adventure/know_your_place
function nice_actions:uuid/store
