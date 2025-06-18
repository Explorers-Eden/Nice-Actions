$execute unless score @s nice_actions.exp_level matches $(equip_hat_cost).. run return run function nice_actions:equip_hat/insufficient_level

execute if items entity @s armor.head * if items entity @s weapon.mainhand * at @s run return run function nice_actions:equip_hat/wears_hat with storage eden:settings nice_actions
execute unless items entity @s armor.head * if items entity @s weapon.mainhand * at @s run return run function nice_actions:equip_hat/no_hat with storage eden:settings nice_actions