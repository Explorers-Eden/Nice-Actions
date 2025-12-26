execute as @a[tag=!is_sleeping] run function nice_actions:time_hud/update/display/sleeping/add 
execute as @a[tag=is_sleeping] run function nice_actions:time_hud/update/display/sleeping/remove
execute store result storage eden:temp huds.players_sleeping int 1 run scoreboard players get $players_sleeping nice_actions.technical

#scoreboard players set $players_needed_sleeping nice_actions.technical 0
#execute as @a run scoreboard players add $players_needed_sleeping nice_actions.technical 1
#
#function nice_actions:time_hud/update/display/sleeping/create_string