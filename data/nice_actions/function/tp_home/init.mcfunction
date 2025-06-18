scoreboard players add @s nice_actions.tp_home.cooldown 0

$execute unless score @s nice_actions.exp_level matches $(tp_home_cost).. run return run function nice_actions:tp_home/insufficient_level

execute as @s[scores={nice_actions.tp_home.cooldown=0}] run return run function nice_actions:tp_home/get_id
execute as @s[scores={nice_actions.tp_home.cooldown=1}] run return run function nice_actions:tp_home/on_cooldown