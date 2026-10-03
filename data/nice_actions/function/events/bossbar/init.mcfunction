schedule function nice_actions:events/bossbar/init 1s
scoreboard players add @a nice_actions.events.counter 0
execute as @a unless score @s nice_actions.uuid.0 = @s nice_actions.uuid.0 run function nice_actions:uuid/store

tag @a remove nice_actions.events.hud_visible
execute if score $event_active nice_actions.technical matches 1 run tag @a[scores={nice_actions.events.participate=1}] add nice_actions.events.hud_visible
execute as @a[tag=nice_actions.events.hud_visible] if score @s nice_actions.events.counter >= $required_amount nice_actions.events.counter run tag @s remove nice_actions.events.hud_visible

execute as @a[tag=nice_actions.events.hud_visible] run function nice_actions:events/bossbar/display/get_data
execute as @a[tag=!nice_actions.events.hud_visible] run function nice_actions:events/bossbar/hide/get_data
