playsound minecraft:item.armor.equip_generic player @s ~ ~ ~ 1 1
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air

execute if items entity @s armor.head minecraft:feather run advancement grant @s only eden:adventure/feather_in_your_cap
execute if items entity @s armor.head minecraft:lightning_rod run advancement grant @s only eden:adventure/shocking_style
execute if items entity @s armor.head minecraft:bone run advancement grant @s only eden:adventure/bonehead
execute if items entity @s armor.head #eden:glass_hats run advancement grant @s only eden:adventure/glass_half_full

$experience add @s -$(equip_hat_cost) levels