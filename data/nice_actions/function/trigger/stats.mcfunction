schedule function nice_actions:trigger/stats 1s

scoreboard players enable @a nice_actions.stats_trigger
execute as @a store result score @s nice_actions.exp_level run experience query @s levels

execute as @a[scores={nice_actions.stats_trigger=1..33}] run function nice_actions:share_stats/check_hostile with storage eden:settings nice_actions
execute as @a[scores={nice_actions.stats_trigger=34..54}] run function nice_actions:share_stats/check_mined with storage eden:settings nice_actions
execute as @a[scores={nice_actions.stats_trigger=55..64}] run function nice_actions:share_stats/check_misc with storage eden:settings nice_actions
execute as @a[scores={nice_actions.stats_trigger=65..76}] run function nice_actions:share_stats/check_travel with storage eden:settings nice_actions

scoreboard players set @a nice_actions.stats_trigger 0
