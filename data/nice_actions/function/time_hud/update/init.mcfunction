schedule function nice_actions:time_hud/update/init 10t

execute as @a[scores={nice_actions.hud.time=1}] at @s run function nice_actions:time_hud/update/display/exec
execute as @a[scores={nice_actions.hud.time=0}] at @s run function nice_actions:time_hud/update/hide/exec