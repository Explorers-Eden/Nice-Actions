schedule function nice_actions:events/init 1s

execute store result score $raw_daytime eden.technical run time query daytime
execute if score $event_active eden.technical matches 1.. run scoreboard players add $event_timer eden.technical 1

execute if score $raw_daytime eden.technical matches 6000..6100 unless score $event_active eden.technical matches 1.. run function nice_actions:events/start/init
execute if score $event_timer eden.technical matches 1150.. if score $event_active eden.technical matches 1.. run function nice_actions:events/stop