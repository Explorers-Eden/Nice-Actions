$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "body":[\
    {\
      "type":"minecraft:item",\
      "item":{\
        "id":"minecraft:$(icon)",\
        "components":{\
          "minecraft:tooltip_display":{\
            "hide_tooltip":true\
          }\
        }\
      },\
      "description":{\
        "translate":"menu.nice_actions.config.events.type.description",\
        "fallback":"Configure Event Settings:"\
      }\
    }\
  ],\
  "inputs":[\
    {\
      "type":"minecraft:number_range",\
      "key":"max_amount",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.max_amount",\
        "fallback":"Max Amount needed"\
      },\
      "start":8,\
      "end":512,\
      "step":4,\
      "initial":$(max_amount)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"chance",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.chance",\
        "fallback":"Event Chance"\
      },\
      "label_format": "options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(chance_initial)\
    },\
    {\
      "type": "minecraft:text",\
      "key": "loot_table",\
      "width": 256,\
      "label": {\
        "translate": "option.nice_actions.events.loot_table",\
        "fallback": "Reward Loot Table"\
      },\
      "initial": "$(loot_table)",\
      "max_length": 1024\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title": {\
    "translate": "menu.nice_actions.config.main.title.external",\
    "fallback": "Nice Actions Config"\
  },\
  "title": {\
    "translate": "menu.nice_actions.config.main.title",\
    "fallback": "Nice Actions: Admin Configuration"\
  },\
  "yes":{\
    "label":{\
      "translate":"option.nice_actions.confirm",\
      "fallback":"Confirm"\
    },\
    "action":{\
      "type":"minecraft:dynamic/run_command",\
      "template":"$(command_template)"\
    }\
  },\
  "no":{\
    "label":{\
      "translate":"gui.back"\
    },\
    "action":{\
      "type":"minecraft:show_dialog",\
      "dialog":"nice_actions:config/events"\
    }\
  }\
}