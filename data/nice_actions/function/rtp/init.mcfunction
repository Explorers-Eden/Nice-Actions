scoreboard players add @s nice_actions.rtp.cooldown 0

$execute unless score @s nice_actions.exp_level matches $(rtp_cost).. run return run function nice_actions:rtp/insufficient_level

execute as @s[scores={nice_actions.rtp.cooldown=0}] run return run function nice_actions:rtp/get_data with storage eden:settings nice_actions
execute as @s[scores={nice_actions.rtp.cooldown=1}] run return run function nice_actions:rtp/on_cooldown with storage eden:settings nice_actions