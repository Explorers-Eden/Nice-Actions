$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "body":[\
    {\
      "type":"minecraft:item",\
      "item":{\
        "id":"minecraft:command_block",\
        "components":{\
          "minecraft:tooltip_display":{\
            "hide_tooltip":true\
          }\
        }\
      },\
      "description":{\
        "translate":"menu.nice_actions.config.misc.description",\
        "fallback":"Configure Miscellaneous Action Settings:"\
      }\
    }\
  ],\
  "inputs":[\
    {\
      "type":"minecraft:single_option",\
      "key":"time_format",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.time_format",\
        "fallback":"Time Format"\
      },\
      "options":[\
        {\
          "id":"12",\
          "display":{\
            "translate":"option.nice_actions.time_format_12",\
            "fallback":"12 Hours",\
            "color":"white"\
          }\
        },\
        {\
          "id":"24",\
          "display":{\
            "translate":"option.nice_actions.time_format_24",\
            "fallback":"24 Hours",\
            "color":"white"\
          },\
          "initial":$(time_format_initial)\
        }\
      ]\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"rtp_radius",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.rtp_radius",\
        "fallback":"RTP Radius"\
      },\
      "start":0,\
      "end":25000,\
      "step":100,\
      "initial":$(rtp_radius)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"rtp_height_min",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.rtp_height_min",\
        "fallback":"Min RTP Height"\
      },\
      "start":-60,\
      "end":300,\
      "step":10,\
      "initial":$(rtp_height_min)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"rtp_height_max",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.rtp_height_max",\
        "fallback":"Max RTP Height"\
      },\
      "start":-60,\
      "end":300,\
      "step":10,\
      "initial":$(rtp_height_max)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"rtp_cooldown",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.rtp_cooldown",\
        "fallback":"RTP Cooldown in Seconds"\
      },\
      "start":0,\
      "end":3600,\
      "step":10,\
      "initial":$(rtp_cooldown)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"tp_home_cooldown",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.tp_home_cooldown",\
        "fallback":"TP Home Cooldown in Seconds"\
      },\
      "start":0,\
      "end":3600,\
      "step":10,\
      "initial":$(tp_home_cooldown)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"tp_spawn_cooldown",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.tp_spawn_cooldown",\
        "fallback":"TP Spawn Cooldown in Seconds"\
      },\
      "start":0,\
      "end":3600,\
      "step":10,\
      "initial":$(tp_spawn_cooldown)\
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
      "template":"$(command_template_misc)"\
    }\
  },\
  "no":{\
    "label":{\
      "translate":"gui.back"\
    },\
    "action":{\
      "type":"minecraft:show_dialog",\
      "dialog":"nice_actions:config/main"\
    }\
  }\
}