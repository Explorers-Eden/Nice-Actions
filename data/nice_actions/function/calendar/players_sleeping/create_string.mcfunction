execute store result score $sleeping_percentage nice_actions.technical run gamerule players_sleeping_percentage

execute store result storage eden:temp huds.players_sleeping int 1 run scoreboard players get $players_sleeping nice_actions.technical
execute store result storage eden:temp huds.players_needed_sleeping int 1 run compute default float nice_actions:calendar/players_needed_sleeping
