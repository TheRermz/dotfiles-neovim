return
{
  'goolord/alpha-nvim',
  config = function ()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[    ___ ___ ___ ___ _  _ _                ]],
      [[   | _ ) __/ __|_ _| \| (_)               ]],
      [[   | _ \ _| (_ || || .` |_                ]],
      [[   |___/___\___|___|_|\_(_)__ _  _  ___   ]],
      [[    / __|/ _ \ / _ \| \| |_ _| \| |/ __|  ]],
      [[   | (_ | (_) | (_) | .` || || .` | (_ |  ]],
      [[    \___|\___/_\___/|_|\_|___|_|\_|\___|  ]],
      [[   / __| __/ __/ __|_ _/ _ \| \| |        ]],
      [[   \__ \ _|\__ \__ \| | (_) | .` |        ]],
      [[   |___/___|___/___/___\___/|_|\_|        ]],
      [[                                          ]],
    }

    alpha.setup(dashboard.opts)
  end
};
