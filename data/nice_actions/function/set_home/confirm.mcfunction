execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "title":{\
    "translate":"option.nice_actions.sethome",\
    "fallback":"Set Your Home"\
  },\
  "body":[\
    {\
      "type":"minecraft:plain_message",\
      "contents":[\
        {"translate":"text.nice_actions.set_home_confirm","fallback":"You already have a home set. Replace it with your current position?"},\
        "\n\n",\
        {"translate":"text.nice_actions.set_home_current","fallback":"Current Home: ","color":"gray"},\
        {"text":"$(x) $(y) $(z) ($(dimension))","color":"gray"}\
      ]\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":false,\
  "after_action":"close",\
  "yes":{\
    "label":{\
      "translate":"option.nice_actions.set_home_replace",\
      "fallback":"Replace",\
      "color":"#69FF5E"\
    },\
    "action":{\
      "type":"minecraft:run_command",\
      "command":"trigger nice_actions.dialog_trigger set 16"\
    }\
  },\
  "no":{\
    "label":{\
      "translate":"option.nice_actions.set_home_keep",\
      "fallback":"Cancel",\
      "color":"#FF4A4A"\
    }\
  }\
}
