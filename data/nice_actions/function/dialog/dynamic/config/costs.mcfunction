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
        "translate":"menu.nice_actions.config.costs.description",\
        "fallback":"Configure Exp Level Costs Of Actions:"\
      }\
    }\
  ],\
  "inputs":[\
    {\
      "type":"minecraft:number_range",\
      "key":"rtp_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.rtp",\
        "fallback":"Random Teleport"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(rtp_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"sit_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.sit",\
        "fallback":"Sit Down"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(sit_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"equip_hat_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.hat",\
        "fallback":"Equip As Hat"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(equip_hat_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"tp_spawn_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.tpspawn",\
        "fallback":"Teleport To Spawn"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(tp_spawn_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"send_coords_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.sendcoords",\
        "fallback":"Send Coordinates"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(send_coords_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"death_coords_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.deathcoords",\
        "fallback":"Show Death Coordinates"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(death_coords_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"set_home_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.sethome",\
        "fallback":"Set Your Home"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(set_home_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"tp_home_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.tphome",\
        "fallback":"Teleport To Your Home"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(tp_home_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"villager_info_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.villagerdata",\
        "fallback":"Get Villager Data"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(villager_info_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"horse_info_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.horsedata",\
        "fallback":"Get Horse Info"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(horse_info_cost)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"share_stats_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.nice_actions.stats",\
        "fallback":"Share Stats"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(share_stats_cost)\
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
      "template":"$(command_template_costs)"\
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