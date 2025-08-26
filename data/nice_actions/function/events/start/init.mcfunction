scoreboard players add @a nice_actions.events.counter 0
scoreboard players set $event_checked nice_actions.technical 1

execute \
if data storage eden:settings nice_actions.events.misc{monday:"enabled"} \
if data storage eden:calendar global{weekday: "Monday"} \
run return run function nice_actions:events/start/select

execute \
if data storage eden:settings nice_actions.events.misc{tuesday:"enabled"} \
if data storage eden:calendar global{weekday: "Tuesday"} \
run return run function nice_actions:events/start/select

execute \
if data storage eden:settings nice_actions.events.misc{wednesday:"enabled"} \
if data storage eden:calendar global{weekday: "Wednesday"} \
run return run function nice_actions:events/start/select

execute \
if data storage eden:settings nice_actions.events.misc{thursday:"enabled"} \
if data storage eden:calendar global{weekday: "Thursday"} \
run return run function nice_actions:events/start/select

execute \
if data storage eden:settings nice_actions.events.misc{friday:"enabled"} \
if data storage eden:calendar global{weekday: "Friday"} \
run return run function nice_actions:events/start/select

execute \
if data storage eden:settings nice_actions.events.misc{saturday:"enabled"} \
if data storage eden:calendar global{weekday: "Saturday"} \
run return run function nice_actions:events/start/select

execute \
if data storage eden:settings nice_actions.events.misc{sunday:"enabled"} \
if data storage eden:calendar global{weekday: "Sunday"} \
run return run function nice_actions:events/start/select