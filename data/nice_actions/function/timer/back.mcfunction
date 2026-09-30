execute as @s[scores={nice_actions.back.cooldown=1}] run scoreboard players add @s nice_actions.back.timer 1
$execute as @s[scores={nice_actions.back.timer=$(back_cooldown)..}] run scoreboard players set @s nice_actions.back.cooldown 0
