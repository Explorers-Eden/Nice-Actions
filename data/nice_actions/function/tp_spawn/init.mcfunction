scoreboard players add @s nice_actions.tp_spawn.cooldown 0

$execute unless score @s nice_actions.exp_level matches $(tp_spawn_cost).. run return run function nice_actions:tp_spawn/insufficient_level

execute as @s[scores={nice_actions.tp_spawn.cooldown=0}] run return run function nice_actions:tp_spawn/teleport_player with storage eden:settings nice_actions
execute as @s[scores={nice_actions.tp_spawn.cooldown=1}] run return run function nice_actions:tp_spawn/on_cooldown with storage eden:settings nice_actions