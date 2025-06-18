scoreboard players operation $hour_slept eden.technical = $24_hour nice_actions.calendar
scoreboard players set $sleep_triggered eden.technical 1

execute unless score $hour_slept eden.technical matches 0..6 run return fail
scoreboard players reset * nice_actions.has_slept
scoreboard players reset $sleep_triggered eden.technical