execute as @a[tag=nice_actions.warmup.active,scores={nice_actions.warmup.left=1..}] run function nice_actions:warmup/clear
execute as @a[tag=nice_actions.warmup.active] at @s run function nice_actions:warmup/tick_player

execute if entity @a[tag=nice_actions.warmup.active] run schedule function nice_actions:warmup/tick 1t
