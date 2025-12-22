data modify storage eden:temp nice_actions.transfer_enchantments.cost set from storage eden:settings nice_actions.transfer_enchantments_cost
data modify storage eden:temp nice_actions.transfer_enchantments.enchantments set from entity @s equipment.offhand.components."minecraft:enchantments"

function nice_actions:transfer_enchantments/exec with storage eden:temp nice_actions.transfer_enchantments