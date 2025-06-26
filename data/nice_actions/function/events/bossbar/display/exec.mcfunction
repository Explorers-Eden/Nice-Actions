$bossbar set eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible true
$bossbar set eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) name $(title)

$execute store result bossbar eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) max run scoreboard players get $required_amount nice_actions.events.counter
$execute store result bossbar eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) value run scoreboard players get @s nice_actions.events.counter