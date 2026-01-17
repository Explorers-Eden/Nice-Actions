execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

execute as @s[tag=!nice_actions.time_hud] run return run function nice_actions:time_hud/display
execute as @s[tag=nice_actions.time_hud] run return run function nice_actions:time_hud/hide