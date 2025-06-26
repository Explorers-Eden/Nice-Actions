schedule function nice_actions:events/bossbar/init 1s

execute as @a[scores={nice_actions.events.participate=1}] \
if score $event_active eden.technical matches 1 \
run function nice_actions:events/bossbar/display/get_data with entity @s

execute as @a[scores={nice_actions.events.participate=0}] \
run function nice_actions:events/bossbar/hide/get_data with entity @s

execute as @a \
if score $event_active eden.technical matches 0 \
run function nice_actions:events/bossbar/hide/get_data with entity @s

execute as @a[scores={nice_actions.events.participate=1}] \
if score $event_active eden.technical matches 1 \
if score @s nice_actions.events.counter >= $required_amount nice_actions.events.counter \
run function nice_actions:events/bossbar/hide/get_data with entity @s