$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.x int 1 run data get entity @s Pos[0]
$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.y int 1 run data get entity @s Pos[1]
$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.z int 1 run data get entity @s Pos[2]
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.dimension set from entity @s Dimension

loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).displayname set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] Item.components.minecraft:profile.name
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1]