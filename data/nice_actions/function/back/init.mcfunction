execute if entity @s[tag=nice_actions.warmup.active] run return fail

scoreboard players add @s nice_actions.back.cooldown 0

$execute unless score @s nice_actions.exp_level matches $(back_cost).. run return run function nice_actions:back/insufficient_level

execute as @s[scores={nice_actions.back.cooldown=0}] at @s run return run function nice_actions:back/get_id
execute as @s[scores={nice_actions.back.cooldown=1}] run return run function nice_actions:back/on_cooldown with storage eden:settings nice_actions
