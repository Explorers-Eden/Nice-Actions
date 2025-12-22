$execute unless score @s nice_actions.exp_level matches $(transfer_enchantments_cost).. run return run function nice_actions:transfer_enchantments/insufficient_level
execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

execute unless data entity @s equipment.offhand.components{"minecraft:enchantments":{}} run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Offhand item not enchanted.","italic":false,"translate":"text.nice_actions.transfer_enchantments_failed_offhand_no_enchant"}\
]

execute if data entity @s SelectedItem.components{"minecraft:enchantments":{}} run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Mainhand item already enchanted.","italic":false,"translate":"text.nice_actions.transfer_enchantments_failed_mainhand_has_enchant"}\
]

execute unless items entity @s weapon.mainhand * run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"No item in mainhand.","italic":false,"translate":"text.nice_actions.transfer_enchantments_failed_mainhand_no_item"}\
]

execute unless items entity @s weapon.offhand * run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"No item in offhand.","italic":false,"translate":"text.nice_actions.transfer_enchantments_failed_offhand_no_item"}\
]

execute if items entity @s weapon.mainhand minecraft:book run \
execute unless items entity @s weapon.mainhand minecraft:book[minecraft:count=1] run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"More than one Book in mainhand.","italic":false,"translate":"text.nice_actions.transfer_enchantments_failed_mainhand_books"}\
]


execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:swords"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_sword"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:shovels"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_shovel"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:axes"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_axe"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:pickaxes"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_pickaxe"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:hoes"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_hoe"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:spears"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_spear"}}}} run return run function nice_actions:transfer_enchantments/get_data

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:head_armor"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_head_armor"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:chest_armor"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_chest_armor"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:leg_armor"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_leg_armor"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:foot_armor"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_foot_armor"}}}} run return run function nice_actions:transfer_enchantments/get_data

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:elytra"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_elytra"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:trident"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_trident"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:mace"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_mace"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:shears"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_shears"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:flint_and_steel"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_flint_and_steel"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:brush"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_brush"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:fishing_rod"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_fishing_rod"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:warped_fungus_on_a_stick"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_warped_fungus_on_a_stick"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:carrot_on_a_stick"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_carrot_on_a_stick"}}}} run return run function nice_actions:transfer_enchantments/get_data

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#minecraft:harnesses"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_harness"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#nice_actions:horse_armor"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_horse_armor"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"#nice_actions:nautilus_armor"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_nautilus_armor"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:wolf_armor"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_wolf_armor"}}}} run return run function nice_actions:transfer_enchantments/get_data
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":"minecraft:saddle"},"mainhand":{"items":"#nice_actions:can_transfer_enchantments_from_saddle"}}}} run return run function nice_actions:transfer_enchantments/get_data



tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","fallback":"Mainhand item cannot be enchanted with your offhand item.","italic":false,"translate":"text.nice_actions.transfer_enchantments_failed_generic"}\
]