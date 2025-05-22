Config = {}

--- Framework selection used to determine which server framework is active.
--- Must be one of the following values: `"vRP"`, `"QBCore"`, `"ESX"` or `"QBox"`.
--- This setting controls how player data, money, and events are handled internally.
---
--- @type "vRP" | "QBCore" | "ESX" | "QBox"
Config.Framework = ""

--- Enables verbose logging in the server/client console for debugging purposes.
--- Useful during development or for troubleshooting errors.
---
--- @type boolean
Config.Debug = false

-- These values represent all the possible bet amounts that players can choose to play with.
Config.Bets = {1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 12000, 14000, 16000, 18000, 20000, 25000, 30000, 35000, 40000, 50000, 60000, 70000, 80000, 90000, 100000}

-- The DefaultBet represents the index position in the Config.Bets array, minus 1.
-- For example, if Config.DefaultBet = 0, it means the actual default bet is Config.Bets[1], which corresponds to 1000.
Config.DefaultBet = 0 

--- The max amount for gamble.
--- If the win amount from gamble exceeds `Config.GambleMaxWinnings` times, the gamble is canceled automatically.
--- If this value is 0, there is no maximum limit and players can double the winning amount as much as they want.
--- @type number[]
Config.GambleMaxWinnings = 15

--- Target RTP (Return to Player) percentage used to control payout balance.
--- This value should be a number between 0.0 and 1.0.
--- For example, 0.55 means that 55% of the total bets are allowed to be paid out over time.
---
--- The RTP system is used to simulate casino-like behavior by limiting payouts.
--- Before awarding a win, the system checks if the expected payout would exceed the configured RTP.
--- This is useful for maintaining long-term profit margins on slot machines.
---
--- @type number
Config.TargetRTP = 0.90

--- WIN LINE CONFIGURATION SYSTEM ---
--[[ 
    You can define different win line layouts using the Config.Lines table.
    Each key is a name like "5x3", "10x", etc. (you can customize the names).
    Each value is a list of lines, where each line is a list of 5 positions (1 per reel).

    Use `Config.WinLines` to select which layout is active.
    
    Position index map in 5x3 layout (reel x row):
        1   4   7   10  13
        2   5   8   11  14
        3   6   9   12  15
]]
Config.Lines = {
    ["5 Lines"] = { -- SIZZLING HOT (by Novomatic) STYLE
        {1, 4, 7, 10, 13},
        {2, 5, 8, 11, 14},
        {3, 6, 9, 12, 15},
        {1, 5, 9, 11, 13},
        {3, 5, 7, 11, 15}
    },

    ["10 Lines"] = { -- SHINING CROWN (by EGT) STYLE
        {1, 4, 7, 10, 13},
        {2, 5, 8, 11, 14},
        {3, 6, 9, 12, 15},
        {1, 5, 9, 11, 13},
        {3, 5, 7, 11, 15},
        {1, 4, 8, 12, 15},
        {3, 6, 8, 10, 13},
        {2, 4, 7, 10, 14},
        {2, 6, 9, 12, 14},
        {1, 5, 8, 11, 13}
    },

    ["20 Lines"] = { -- 20 SUPER HOT (by EGT) STYLE
        {1, 4, 7, 10, 13},
        {2, 5, 8, 11, 14},
        {3, 6, 9, 12, 15},
        {1, 5, 9, 11, 13},
        {3, 5, 7, 11, 15},
        {1, 4, 8, 12, 15},
        {3, 6, 8, 10, 13},
        {2, 4, 7, 10, 14},
        {2, 6, 9, 12, 14},
        {1, 5, 8, 11, 13},
        {3, 5, 8, 11, 15},
        {2, 4, 8, 12, 14},
        {2, 6, 8, 10, 14},
        {1, 5, 7, 11, 13},
        {3, 5, 9, 11, 15},
        {2, 5, 7, 11, 14},
        {2, 5, 9, 11, 14},
        {1, 6, 7, 12, 13},
        {3, 4, 9, 10, 15},
        {2, 4, 9, 10, 14}
    }
}

-- Select active line setup
Config.WinLines = "10 Lines" -- Options: "5 Lines", "10 Lines", etc.

--- Symbol pool used to generate the slot results on each spin.
--- From this table, 15 symbols will be randomly selected and distributed across the 5x3 slot grid.
---
--- The more times a symbol appears in this list, the higher the probability it has to be selected.
--- This acts as a weight system for symbol distribution, allowing fine control over rarity and frequency.
---
--- For example: if "lemonSlot" appears 3 times and "sevenSlot" appears only once, 
--- then lemons are more likely to appear during spins compared to sevens.
---
--- This configuration directly affects RTP and volatility behavior of the slot machine.
--- @type string[]
Config.WinningTable = {"lemonSlot","orangeSlot","grapesSlot","grapesSlot", "cherriesSlot", "sevenSlot", "lemonSlot", "orangeSlot","lemonSlot","plumSlot","plumSlot","melonSlot","melonSlot","orangeSlot","plumSlot","cherriesSlot", "cherriesSlot"}

--- Symbol payout table used to determine winnings on each payline.
--- Each symbol defined in this table includes a list of multipliers (`prizes`)
--- based on how many identical symbols appear consecutively on a winning line.
---
--- The index represents the number of matching symbols (1 to 5).
--- If a symbol has a value greater than 0 at index [2], then that symbol
--- will also trigger a payout when found twice on an eligible winning line.
--- All other symbols generally require a minimum of 3 matches to be valid.
---
--- Note: Only lines defined in the `Config.Lines` table will be evaluated.
--- This table is essential for configuring which symbols award prizes and how much.
--- @type table<string, { name: string, prizes: table<number, number> }>
Config.Multipliers = {
    --- Normal Symbols
    ['cherriesSlot'] = {
        prizes = {
            [0] = 0,
            [1] = 0,
            [2] = 0,
            [3] = 1,
            [4] = 3,
            [5] = 15
        }
    },

    ['lemonSlot'] = {
        prizes = {
            [0] = 0,
            [1] = 0,
            [2] = 0,
            [3] = 1,
            [4] = 3,
            [5] = 15
        }
    },

    ['orangeSlot'] = {
        prizes = {
            [0] = 0,
            [1] = 0,
            [2] = 0,
            [3] = 1,
            [4] = 3,
            [5] = 15
        }
    },

    --- Medium Symbol
    ['plumSlot'] = {
        prizes = {
            [0] = 0,
            [1] = 0,
            [2] = 0,
            [3] = 2,
            [4] = 4,
            [5] = 20
        }
    },

    --- High Symbols
    ['melonSlot'] = {
        prizes = {
            [0] = 0,
            [1] = 0,
            [2] = 0,
            [3] = 4,
            [4] = 8,
            [5] = 16
        }
    },

    ['grapesSlot'] = {
        prizes = {
            [0] = 0,
            [1] = 0,
            [2] = 0,
            [3] = 4,
            [4] = 8,
            [5] = 16
        }
    },

    ['sevenSlot'] = {
        prizes = {
            [0] = 0,
            [1] = 0,
            [2] = 1,
            [3] = 5,
            [4] = 15,
            [5] = 20
        }
    }
}

---@class SymbolPayout
---@field name string               -- The display name of the symbol (e.g. "sevenSlot", "melonSlot", etc.)
---@field prizes table<integer, number> -- Multiplier payouts based on the number of matches (index = 1 to 5)

---@type JackpotConfig
Config.JackpotTable = {
    config = {
        ["Sevens Screen"] = 1, -- ["combination"] = <chance>,
        ["Melon Diagonals"] = 4,
        ["Four Sevens"] = 10,
        ["Five Sevens"] = 4
    },
    ["Four Sevens"] = { -- 2, 5, 8, 11, 14
        [1] = {prize = "random", location = 1},
        [2] = {prize = "sevenSlot", location = 2},
        [3] = {prize = "random", location = 3},
        [4] = {prize = "random", location = 4},
        [5] = {prize = "sevenSlot", location = 5},
        [6] = {prize = "random", location = 6},
        [7] = {prize = "random", location = 7},
        [8] = {prize = "sevenSlot", location = 8},
        [9] = {prize = "random", location = 9},
        [10] = {prize = "random", location = 10},
        [11] = {prize = "sevenSlot", location = 11},
        [12] = {prize = "random", location = 12},
        [13] = {prize = "random", location = 13},
        [14] = {prize = "random", location = 14},
        [15] = {prize = "random", location = 15}
    },
    ["Five Sevens"] = { -- 2, 5, 8, 11, 14
        [1] = {prize = "random", location = 1},
        [2] = {prize = "sevenSlot", location = 2},
        [3] = {prize = "random", location = 3},
        [4] = {prize = "random", location = 4},
        [5] = {prize = "sevenSlot", location = 5},
        [6] = {prize = "random", location = 6},
        [7] = {prize = "random", location = 7},
        [8] = {prize = "sevenSlot", location = 8},
        [9] = {prize = "random", location = 9},
        [10] = {prize = "random", location = 10},
        [11] = {prize = "sevenSlot", location = 11},
        [12] = {prize = "random", location = 12},
        [13] = {prize = "random", location = 13},
        [14] = {prize = "sevenSlot", location = 14},
        [15] = {prize = "random", location = 15}
    },
    ["Sevens Screen"] = {
        [1] = {prize = "sevenSlot", location = 1},
        [2] = {prize = "sevenSlot", location = 2},
        [3] = {prize = "sevenSlot", location = 3},
        [4] = {prize = "sevenSlot", location = 4},
        [5] = {prize = "sevenSlot", location = 5},
        [6] = {prize = "sevenSlot", location = 6},
        [7] = {prize = "sevenSlot", location = 7},
        [8] = {prize = "sevenSlot", location = 8},
        [9] = {prize = "sevenSlot", location = 9},
        [10] = {prize = "sevenSlot", location = 10},
        [11] = {prize = "sevenSlot", location = 11},
        [12] = {prize = "sevenSlot", location = 12},
        [13] = {prize = "sevenSlot", location = 13},
        [14] = {prize = "sevenSlot", location = 14},
        [15] = {prize = "sevenSlot", location = 15}
    },
    ["Melon Diagonals"] = {
        [1] = {prize = "melonSlot", location = 1},
        [2] = {prize = "random", location = 2},
        [3] = {prize = "melonSlot", location = 3},

        [4] = {prize = "random", location = 4},
        [5] = {prize = "melonSlot", location = 5},
        [6] = {prize = "random", location = 6},

        [7] = {prize = "melonSlot", location = 7},
        [8] = {prize = "random", location = 8},
        [9] = {prize = "melonSlot", location = 9},

        [10] = {prize = "random", location = 10},
        [11] = {prize = "melonSlot", location = 11},
        [12] = {prize = "random", location = 12},

        [13] = {prize = "melonSlot", location = 13},
        [14] = {prize = "random", location = 14},
        [15] = {prize = "melonSlot", location = 15}
    }
}

--- Configuration for available slot machine positions
--- @class PositionConfig
--- @field position vector3 The 3D coordinates of the slot machine
--- @field openRadius number The radius within which a player can interact with the machine
Config.Positions = {
    {
        position = vec3(584.06481933594,-866.49896240234,41.143444061279),
        openRadius = 1.0
    },

    {
        position = vec3(334.45950317383,-1382.2785644531,32.509174346924),
        openRadius = 1.0
    }
}

Config.Lang = Languages[Language]

--[[ 
    These messages are intentionally shown only when suspicious behavior is detected, 
    such as attempting to trigger gambling events or rewards from unauthorized menus or contexts.

    If a player gets kicked or flagged with one of these messages (e.g. #0001, #0002, #0003), 
    it's a strong indication of cheat usage or client-side manipulation attempts.

    In 100% of cases so far, these messages were triggered by users with injected or tampered clients.

    You can safely assume the player was using cheats when these appear.
]]

Config.Lang.NotInGamblingMenu = "You should buy better cheats. #0001"
Config.Lang.InvalidGambleAnswer = "You should buy better cheats. #0002"
Config.Lang.InvalidSlotLocation = "You should buy better cheats. #0003"
Config.Lang.InvalidBetAction = "You should buy better cheats. #0004"
Config.Lang.InvalidSpinAction = "You should buy better cheats. #0005"
Config.Lang.InvalidGambleAction = "You should buy better cheats. #0006"
