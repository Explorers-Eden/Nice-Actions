playsound minecraft:item.armor.equip_generic player @s ~ ~ ~ 1 1
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air
$experience add @s -$(equip_hat_cost) levels