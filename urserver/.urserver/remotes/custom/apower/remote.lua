local kb = libs.keyboard;
local keyboard = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local fs = libs.fs;
local script = libs.script;
local dev = require("device");
local win = libs.win;

-- Commands

--IR CONTROLS

--@help Turn Projector On
actions.projon = function()
	dev.irsend("UIR.FREQ.37037.SEQ.338.170.21.21.22.21.21.21.22.21.22.20.22.21.22.21.22.20.22.21.22.21.21.21.22.21.22.63.22.63.22.21.22.21.21.64.22.63.22.63.22.64.22.20.22.21.22.63.22.21.22.20.22.21.22.21.22.20.22.64.21.64.22.20.22.64.21.1733.339.170.21.21.22.20.22.21.22.21.22.20.22.21.22.21.21.21.22.21.22.20.22.21.22.21.22.63.22.63.22.21.22.20.22.64.22.63.22.63.22.63.22.21.22.21.22.63.22.21.22.20.22.21.22.20.22.21.22.63.22.64.22.20.22.63.22.1732");
end

--@help Turn Projector Off
actions.projoff = function()
	dev.irsend("UIR.FREQ.37974.SEQ.340.171.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.64.22.65.21.21.22.21.22.21.22.64.22.65.22.64.22.21.22.21.22.65.22.21.22.64.22.21.22.21.22.21.22.64.22.64.22.22.21.64.22.1754");
end

--@help Turn Projector to ECOBlank
actions.projblank = function()
	dev.irsend("UIR.FREQ.37974.SEQ.340.171.22.21.22.21.22.21.22.22.21.21.22.21.22.21.22.21.22.21.22.22.21.21.22.21.22.64.22.65.22.21.22.21.22.64.22.65.22.64.22.21.22.21.22.22.21.21.22.21.22.21.22.21.22.21.22.64.22.64.22.64.22.64.22.64.22.1754")
end

--MULTIMEDIA CONTROLS

--Detects

--@help Play / Pause
actions.pause = function()
    kb.press("space");
end

--@help Stop Playback
actions.stop = function()
     kb.stroke("ctrl","s");
end

--@help Jump Back
actions.jumpb = function()
	kb.stroke("ctrl","shift", "left");
end

--@help Jump Forward
actions.jumpf = function()
	kb.stroke("ctrl","shift", "right");
end

--@help Previous
actions.previous = function()
	kb.stroke("ctrl","l");
end

--@help Next
actions.next = function()
	kb.stroke("ctrl","n");
end

--@help Volume Up
actions.vol_up = function()
    os.execute("amixer set Master 2dB+");
end

--@help Volume Down
actions.vol_down = function()
    os.execute("amixer set Master 2dB-");
end

--@help Mute / Unmute
actions.mute = function()
    os.execute("amixer set Master toggle");
end

--@help Subtitles
actions.subs = function()
    actions.command(MCC_SET_SUBTITLES, -1);
end

--@help Fullscreen
actions.fullscreen = function()
	kb.stroke("f");
end

--@help Show Music
actions.music = function()
	os.execute("st ncmpcpp");
end

--@help Show Video
actions.video = function()
	os.execute("kawaii-player");
end

--NAVIGATION CONTROLS

--@help Mouse and Keyboard
actions.input = function()
    dev.switch("Relmtech.Basic Input");
end

--@help Up Arrow
actions.up = function()
    kb.press("up")
end

--@help Down Arrow
actions.down = function()
    kb.press("down")
end

--@help Left Arrow
actions.left = function()
    kb.press("left")
end

--@help Right Arrow
actions.right = function()
    kb.press("right")
end

--@help Select current
actions.select = function()
    keyboard.stroke("return");
end

--@help Enter Key
actions.enter = function()
    keyboard.stroke("return");
end

--@help Escape Key
actions.esc = function()
    keyboard.stroke("escape");
end

--@help Back Nav
actions.back = function()
    keyboard.stroke("alt", "left");
end

--@help Forward Nav
actions.forward = function()
    keyboard.stroke("alt", "right");
end

--@help Last Tab
actions.last_tab = function()
    keyboard.stroke("ctrl", "pgdown");
end

--@help Close Tab
actions.close_tab = function()
    keyboard.stroke("ctrl", "w");
end

--PROGRAM AND POWER CONTROLS

--@help Shutdown
actions.sd = function()
    dev.switch("Unified.Power");
end

--@help Task Manager
actions.cse = function()
	os.execute("st htop");
end

--@help Close Current Window
actions.close = function()
    keyboard.stroke ("lwin", "q")
end

--@help Web Browser
actions.webbrowse = function()
--    keyboard.stroke ("lwin", "w")
	os.execute("firefox")
end

--@help File Browser
actions.filebrowse = function()
--    keyboard.stroke ("lwin", "w")
	os.execute("thunar")
end

--@help Rofi Menu
actions.rmenu = function()
    keyboard.stroke ("lwin", "space")
--	os.execute("rofi -show -font 'roboto 18'")
end

--@help Snap Left
actions.sleft = function()
    keyboard.stroke("leftshift", "leftwin", "h");
end

--@help Snap Right
actions.sright = function()
    keyboard.stroke("leftshift", "leftwin", "l");
end

--SCREEN SWITCHING

--@help Switch Screen to PC
actions.switchpc = function()
	os.execute("xrandr --output DisplayPort-1 --auto --output HDMI-A-1 --off &")
end

--@help Switch Screen to Projector
actions.switchpro = function()
	os.execute("xrandr --output HDMI-A-1 --auto --output DisplayPort-1 --off &")
end

--Home Automation

