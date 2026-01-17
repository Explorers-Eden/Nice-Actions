execute as @a[tag=!is_sleeping] run function nice_actions:calendar/players_sleeping/add 
execute as @a[tag=is_sleeping] run function nice_actions:calendar/players_sleeping/remove
execute store result storage eden:temp huds.players_sleeping int 1 run scoreboard players get $players_sleeping nice_actions.technical