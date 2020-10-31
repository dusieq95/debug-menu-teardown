-- Made by _dusieq#0404

#include "game.lua"
#include "options.lua"
#include "score.lua"
#include "map.lua"
#include "about.lua"

function DebugMenuUI()

--Title
    UiPush()
    UiTextOutline(0,0,0,1, 0.2)
    UiTranslate(50, UiHeight()-1020)
    UiFont("font/bold.ttf", 30)
    UiText("Debug Menu 0.1")
    -------------------------------------------------------------------------------
    UiFont("font/regular.ttf", 22)
--Number Of Fires
    UiTranslate(0, 30)
    UiColor(1, .9, .3)
    UiText(string.format("Number Of Fires: %d", tostring(GetFireCount())))
--Player Pos
    UiTranslate(0, 22)
    UiText(string.format("X: %g", tostring(GetPlayerPos()[1])))
    UiTranslate(0, 22)
    UiText(string.format("Y: %g", tostring(GetPlayerPos()[2])))
    UiTranslate(0, 22)
    UiText(string.format("Z: %g", tostring(GetPlayerPos()[3])))
--PlayerHealth
    UiTranslate(0, 22)
    UiText(string.format("Health: %g", GetString("game.player.health")))
--Game Version
    UiTranslate(0, 22)
    UiText(string.format("Game Version %s", GetString("game.version")))
	UiPop()
end
