$execute unless score @s nice_actions.exp_level matches $(sit_cost).. run return run function nice_actions:sit/insufficient_level

execute at @s[tag=!sits_down] run function nice_actions:sit/mount with storage eden:settings nice_actions