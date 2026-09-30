execute if entity @s[tag=nice_actions.warmup.active] run return fail

scoreboard players add @s nice_actions.rtp.cooldown 0

$execute unless score @s nice_actions.exp_level matches $(rtp_cost).. run return run function nice_actions:rtp/insufficient_level

execute as @s[scores={nice_actions.rtp.cooldown=0},tag=!nice_actions.warmup.done] run return run function nice_actions:warmup/start {action:3}
execute as @s[scores={nice_actions.rtp.cooldown=0}] run return run function nice_actions:rtp/get_data with storage eden:settings nice_actions
execute as @s[scores={nice_actions.rtp.cooldown=1}] run return run function nice_actions:rtp/on_cooldown with storage eden:settings nice_actions