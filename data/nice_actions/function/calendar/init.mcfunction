schedule function nice_actions:calendar/init 15t

execute store result score $raw_daytime nice_actions.technical run time query daytime
execute if score $raw_daytime nice_actions.technical matches 17991..18009 run scoreboard players add $day nice_actions.calendar 1

function nice_actions:calendar/get_month
function nice_actions:calendar/get_time
function nice_actions:calendar/store_dates
function nice_actions:calendar/get_month_name
function nice_actions:calendar/get_month_name_short
function nice_actions:calendar/get_season
execute if score $raw_daytime nice_actions.technical matches 17991..18009 run function nice_actions:calendar/get_weekday
function nice_actions:calendar/get_weekday_short
function nice_actions:calendar/get_daypart

execute as @a[limit=1,scores={nice_actions.has_slept=1..}] unless score $sleep_triggered nice_actions.technical matches 1 run function nice_actions:calendar/night_skipped
execute if score $sleep_triggered nice_actions.technical matches 1 unless score $sleep_msg_scheduled nice_actions.technical matches 1 if score $24_hour nice_actions.calendar matches 6 run function nice_actions:calendar/sleep_msg

execute as @a at @s if score $24_hour nice_actions.calendar matches 0 if score $minute nice_actions.calendar matches 0 run function nice_actions:calendar/new_day with storage eden:calendar global
execute as @a[scores={nice_actions.has_died_today=1..}] run scoreboard players set @s nice_actions.days_lived.counter 0

function nice_actions:calendar/players_sleeping/init
function nice_actions:calendar/update_bossbar/init