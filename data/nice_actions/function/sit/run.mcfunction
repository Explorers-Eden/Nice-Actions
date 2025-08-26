schedule function nice_actions:sit/run 5t

function nice_actions:sit/dismount
execute as @a[predicate=nice_actions:entity/left_right] run function nice_actions:sit/key_input with storage eden:settings nice_actions
execute as @a[predicate=!nice_actions:entity/left_right] run scoreboard players set @s nice_actions.sit 0
execute as @e[type=block_display,tag=sit_display] on passengers if predicate nice_actions:percentages/2-5 run effect give @s minecraft:regeneration 3 0 true