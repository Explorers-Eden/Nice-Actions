$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).nice_actions.home.x int 1 run data get entity @s Pos[0]
$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).nice_actions.home.y int 1 run data get entity @s Pos[1]
$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).nice_actions.home.z int 1 run data get entity @s Pos[2]
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).nice_actions.home.dimension set from entity @s Dimension