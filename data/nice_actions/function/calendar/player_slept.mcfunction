scoreboard players operation $hour_slept nice_actions.technical = $24_hour nice_actions.calendar
scoreboard players set $sleep_triggered nice_actions.technical 1

execute unless score $hour_slept nice_actions.technical matches 0..6 run return fail
scoreboard players reset * nice_actions.has_slept
scoreboard players reset $sleep_triggered nice_actions.technical