Config = {}

Config.Lang = Languages[Language]
Config.Title = Languages.Title

--- List of regular win sound effect names.
--- One of these will be randomly chosen and played when a player gets a normal win.
--- @type string[]
Config.WinningSounds = {
    "winSound1",
    "winSound2",
    "winSound3",
    "winSound4",
    "winSound5",
    "winSound6"
}

--- List of jackpot win sound effect names.
--- One of these will be randomly chosen and played when a player hits the jackpot.
--- @type string[]
Config.JackpotSounds = {
    "jackpotWin1",
    "jackpotWin2"
}

Config.Sprites = {
    "cherriesSlot",
    "grapesSlot",
    "lemonSlot",
    "melonSlot",
    "orangeSlot",
    "plumSlot",
    "sevenSlot"
}