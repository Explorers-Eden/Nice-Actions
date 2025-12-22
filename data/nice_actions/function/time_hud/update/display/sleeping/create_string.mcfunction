execute store result score $sleeping_percentage nice_actions.technical run gamerule players_sleeping_percentage
scoreboard players operation $sleeping_percentage nice_actions.technical += $100 nice_actions.technical

scoreboard players operation $players_needed_sleeping nice_actions.technical *= $sleeping_percentage nice_actions.technical
scoreboard players operation $players_needed_sleeping nice_actions.technical /= $100 nice_actions.technical

execute store result storage eden:temp huds.players_sleeping int 1 run scoreboard players get $players_sleeping nice_actions.technical
execute store result storage eden:temp huds.players_needed_sleeping int 1 run scoreboard players get $players_needed_sleeping nice_actions.technical