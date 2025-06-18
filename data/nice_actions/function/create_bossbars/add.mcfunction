$bossbar add eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) "Coordinates Hud"
$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) players @s
$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible false
$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color white

$bossbar add eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) "Time/Date Hud"
$bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) players @s
$bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible false
$bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color white
$bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) max 24

data remove storage eden:temp huds