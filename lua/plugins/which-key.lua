local wk = require("which-key")
wk.add({
  { "j", mode = "n", hidden = true },
  { "k", mode = "n", hidden = true },
  { "<leader><C-i>", mode = "n", desc = "tabs" },

  { "<leader>f", group = "file" },
  { "<leader>g", group = "git" },
  { "<leader>s", group = "search" },
  { "<leader>o", group = "obsidian", icon = "" },

  { "<leader>n", desc = "Harpoon: toggle quick menu", icon = "󱦴" },
  { "<leader>a", desc = "Harpoon: add current buffer", icon = "󱦴" },
  { "<leader>d", desc = "Harpoon: remove current buffer", icon = "󱦴" },
  { "<M-1>", desc = "Harpoon: Go to first harpoon item", icon = "󱦴" },
  { "<M-2>", desc = "Harpoon: Go to second harpoon item", icon = "󱦴" },
  { "<M-3>", desc = "Harpoon: Go to third harpoon item", icon = "󱦴" },
  { "<M-4>", desc = "Harpoon: Go to fourth harpoon item", icon = "󱦴" },
  { "<M-5>", desc = "Harpoon: Go to fifth harpoon item", icon = "󱦴" },
  { "<M-6>", desc = "Harpoon: Go to sixth harpoon item", icon = "󱦴" },

  { "<A-j>", mode = "n", desc = "Shift line down", icon = "󰓢" },
  { "<A-k>", mode = "n", desc = "Shift line up", icon = "󰓢" },
  { "<A-j>", mode = "i", desc = "Shift line down", icon = "󰓢" },
  { "<A-k>", mode = "i", desc = "Shift line up", icon = "󰓢" },
  { "<A-j>", mode = "v", desc = "Shift selected lines down", icon = "󰓢" },
  { "<A-k>", mode = "v", desc = "Shift selected lines up", icon = "󰓢" },

  { "<C-h>", mode = "n", desc = "Tmux: navigate left", icon = "" },
  { "<C-j>", mode = "n", desc = "Tmux: navigate down", icon = "" },
  { "<C-k>", mode = "n", desc = "Tmux: navigate up", icon = "" },
  { "<C-l>", mode = "n", desc = "Tmux: navigate right", icon = "" },
  { "<C-\\>", mode = "n", desc = "Tmux: navigate previous", icon = "" },

  { "ds", mode = "n", desc = "Surround: delete", icon = "" },
  { "cs", mode = "n", desc = "Surround: change", icon = "" },
  { "cS", mode = "n", desc = "Surround: Change", icon = "" },
  { "ys", mode = "n", desc = "Surround: surround", icon = "" },
  { "yS", mode = "n", desc = "Surround: Surround", icon = "" },
  { "yss", mode = "n", desc = "Surround: surround line", icon = "" },

  { "<leader>ta", mode = "n", desc = "Tasks: list", icon = "" },
  { "<leader>tl", mode = "n", desc = "Tasks: run last", icon = "" },
})
