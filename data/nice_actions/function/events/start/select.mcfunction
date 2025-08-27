execute \
if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"nice_actions.events.breeding.chance"}} \
run return run function nice_actions:events/start/type/breeding with storage eden:settings nice_actions.events.breeding

execute \
if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"nice_actions.events.brewing.chance"}} \
run return run function nice_actions:events/start/type/brewing with storage eden:settings nice_actions.events.brewing

execute \
if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"nice_actions.events.consuming.chance"}} \
run return run function nice_actions:events/start/type/consuming with storage eden:settings nice_actions.events.consuming

execute \
if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"nice_actions.events.fishing.chance"}} \
run return run function nice_actions:events/start/type/fishing with storage eden:settings nice_actions.events.fishing

execute \
if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"nice_actions.events.killing.chance"}} \
run return run function nice_actions:events/start/type/killing with storage eden:settings nice_actions.events.killing