$bossbar add eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) "Coordinates Hud"
$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) players @s
$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible false
$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color white

$bossbar add eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) "Event Hud"
$bossbar set eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) players @s
$bossbar set eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible false
$bossbar set eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color green
$bossbar set eden:events_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) max 128

data remove storage eden:temp huds