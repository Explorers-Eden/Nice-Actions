execute store result storage eden:temp huds.uuid_0 int 1 run scoreboard players get @s nice_actions.uuid.0
execute store result storage eden:temp huds.uuid_1 int 1 run scoreboard players get @s nice_actions.uuid.1
execute store result storage eden:temp huds.uuid_2 int 1 run scoreboard players get @s nice_actions.uuid.2
execute store result storage eden:temp huds.uuid_3 int 1 run scoreboard players get @s nice_actions.uuid.3

function nice_actions:coords_hud/update/hide/disable with storage eden:temp huds
