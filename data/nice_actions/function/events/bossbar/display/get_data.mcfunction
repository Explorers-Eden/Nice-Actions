execute store result storage eden:temp events.hud.uuid_0 int 1 run scoreboard players get @s nice_actions.uuid.0
execute store result storage eden:temp events.hud.uuid_1 int 1 run scoreboard players get @s nice_actions.uuid.1
execute store result storage eden:temp events.hud.uuid_2 int 1 run scoreboard players get @s nice_actions.uuid.2
execute store result storage eden:temp events.hud.uuid_3 int 1 run scoreboard players get @s nice_actions.uuid.3

data modify storage eden:temp events.hud.title set from storage eden:events nice_actions.title

function nice_actions:events/bossbar/display/exec with storage eden:temp events.hud