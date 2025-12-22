$experience add @s -$(cost) levels

$execute unless items entity @s weapon.mainhand book run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:enchantments":$(enchantments)}}
$execute if items entity @s weapon.mainhand book run item replace entity @s weapon.mainhand with minecraft:enchanted_book[minecraft:stored_enchantments=$(enchantments)]
item replace entity @s weapon.offhand with air

tellraw @s [\
{"text":"▊ ","color":"#69FF5E","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Enchantments succesfully transferred.","italic":false,"translate":"text.nice_actions.transfer_enchantments_succes"}\
]

data remove storage eden:temp nice_actions.transfer_enchantments