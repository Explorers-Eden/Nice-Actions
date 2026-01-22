schedule function nice_actions:coords_hud/update/init 5t

execute as @a[scores={nice_actions.hud.coords=1}] at @s run function nice_actions:coords_hud/update/display/exec
execute as @a[scores={nice_actions.hud.coords=0}] at @s run function nice_actions:coords_hud/update/hide/exec