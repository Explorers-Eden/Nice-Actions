schedule function nice_actions:events/init 1s

execute store result score $raw_daytime nice_actions.technical run time query daytime
execute if score $event_active nice_actions.technical matches 1.. run scoreboard players add $event_timer nice_actions.technical 1

execute if score $raw_daytime nice_actions.technical matches 6000..6100 unless score $event_active nice_actions.technical matches 1.. unless score $event_checked nice_actions.technical matches 1.. run function nice_actions:events/start/init
execute if score $event_timer nice_actions.technical matches 1150.. if score $event_active nice_actions.technical matches 1.. run function nice_actions:events/stop

execute unless score $raw_daytime nice_actions.technical matches 6000..6100 run scoreboard players set $event_checked nice_actions.technical 0