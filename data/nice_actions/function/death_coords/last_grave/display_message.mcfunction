$execute if data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave{removed:0b} \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"bold":false,"color":"white","fallback":"Position of Last Grave:","italic":false,"translate":"text.nice_actions.pos_last_grave"},\
        {"text":" X: ","color":"dark_purple","bold":false,"italic":false},\
        {"text":"$(x) ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"text":"$(y) ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"text":"$(z)","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"text":"$(dimension)","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"bold":false,"color":"white","fallback":"Not Looted Yet","italic":false,"translate":"text.nice_actions.last_grave_unlooted"}\
    ]

$execute if data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave{removed:1b} \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"bold":false,"color":"white","fallback":"Position of Last Grave:","italic":false,"translate":"text.nice_actions.pos_last_grave"},\
        {"text":" X: ","color":"dark_purple","bold":false,"italic":false},\
        {"text":"$(x) ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"text":"$(y) ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"text":"$(z)","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"text":"$(dimension)","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"bold":false,"color":"white","fallback":"Already Looted","italic":false,"translate":"text.nice_actions.last_grave_looted"}\
    ]