execute unless data entity @s {SleepTimer:0s} run return fail
scoreboard players remove $players_sleeping nice_actions.technical 1
tag @s remove is_sleeping