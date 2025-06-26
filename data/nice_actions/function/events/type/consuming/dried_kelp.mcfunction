advancement revoke @s only nice_actions:events/consuming/dried_kelp
scoreboard players add @s nice_actions.events.counter 0

execute \
if data storage eden:events nice_actions{consuming:"dried_kelp"} \
if score @s nice_actions.events.participate matches 1 \
run function nice_actions:events/increase_player_counter

execute \
if data storage eden:events nice_actions{consuming:"dried_kelp"} \
if score @s nice_actions.events.participate matches 1 \
if score @s nice_actions.events.counter = $required_amount nice_actions.events.counter \
run function nice_actions:events/payout with storage eden:settings nice_actions.events.consuming