$execute unless score @s nice_actions.exp_level matches $(share_stats_cost).. run return run function nice_actions:share_stats/insufficient_level

execute as @s[scores={nice_actions.stats_trigger=55}] at @s run function nice_actions:share_stats/misc/animals_bred with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=56}] at @s run function nice_actions:share_stats/misc/eat_cake_slice with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=57}] at @s run function nice_actions:share_stats/misc/enchant_item with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=58}] at @s run function nice_actions:share_stats/misc/fish_caught with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=59}] at @s run function nice_actions:share_stats/misc/raid_trigger with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=60}] at @s run function nice_actions:share_stats/misc/raid_win with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=61}] at @s run function nice_actions:share_stats/misc/traded_with_villager with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=62}] at @s run function nice_actions:share_stats/misc/deaths with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=63}] at @s run function nice_actions:share_stats/misc/sleep_in_bed with storage eden:settings nice_actions
execute as @s[scores={nice_actions.stats_trigger=64}] at @s run function nice_actions:share_stats/misc/days_wo_death with storage eden:settings nice_actions