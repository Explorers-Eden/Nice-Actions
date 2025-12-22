execute if data entity @s {SleepTimer:0s} run return fail
scoreboard players add $players_sleeping nice_actions.technical 1
tag @s add is_sleeping