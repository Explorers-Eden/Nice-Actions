$execute unless score @s nice_actions.exp_level matches $(sit_cost).. run return run function nice_actions:sit/insufficient_level

execute as @s[tag=!sits_down,scores={nice_actions.sit=..7},predicate=eden:entity/left_right,predicate=!eden:entity/stepping_on_non_solid_blocks] run scoreboard players add @s nice_actions.sit 1
execute as @s[tag=!sits_down,scores={nice_actions.sit=1..8},predicate=eden:entity/left_right,predicate=!eden:entity/stepping_on_non_solid_blocks] run function nice_actions:sit/actionbar_message
execute as @s[tag=!sits_down,scores={nice_actions.sit=8},predicate=eden:entity/left_right,predicate=!eden:entity/stepping_on_non_solid_blocks] at @s run function nice_actions:sit/mount with storage eden:settings nice_actions