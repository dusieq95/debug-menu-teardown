-- Made by _dusieq#0404
-- Version 0.2 by Forgenet#1928

#include "game.lua"
#include "options.lua"
#include "score.lua"
#include "map.lua"
#include "about.lua"

function DebugMenuUI()
    local levelid = GetString("game.levelid")
    local val = GetInt("options.gfx.debug")
    local is_mission = false
	if val == 1 then
        UiPush()
        UiColor(0, 0, 0, 0.5)
		UiRect(UiWidth()/7.5, UiHeight()/3.1)

        --LevelID
        if levelid == "hub15" then
            UiTranslate(30, 75)
        elseif levelid == "" then
            UiTranslate(30, 36)
            UiFont("font/bold.ttf", 30)
            UiColor(0.5, 1, 0.5, 0.4)
            UiText("CREATE")
            UiTranslate(0, 39)
        elseif string.find(levelid, "sandbox") then
            UiTranslate(30, 36)
            UiFont("font/bold.ttf", 30)
            UiColor(0.5, 1, 0.5, 0.4)
            UiText("SANDBOX")
            UiTranslate(0, 39)
        else
            is_mission = true
            UiTranslate(30, 36)
            UiFont("font/bold.ttf", 30)
            UiColor(0.5, 1, 0.5, 0.4)
            UiText(levelid)
            UiTranslate(0, 39)
        end

        --Tittle
        UiFont("font/bold.ttf", 30)
        UiColor(1, 1, 1)
        UiText("Debug Menu")
        UiTranslate(0, 25)

        --Debuger Version
        UiFont("font/regular.ttf", 24)
        UiText("Version 0.2")
        UiTranslate(0, 25)
        UiText("-----------------------")
        UiFont("font/regular.ttf", 22)

        --Game Version
        UiTranslate(0, 22)
        UiText(string.format("Game Version %s", GetString("game.version")))

        --Fire counter
        UiTranslate(0, 22)
        UiText(string.format("Fire sources: %d", tostring(GetFireCount())))
        UiTranslate(0, 22)

        --Mission time
        if is_mission then
            UiText(string.format("Mission time: %d", tostring(GetFloat("level.missiontime"))))
            UiTranslate(0, 22)
        end

        UiFont("font/regular.ttf", 24)
        UiText("-----------------------")
        UiFont("font/regular.ttf", 22)
        UiTranslate(0, 22)

        --Player Pos
        UiText(string.format("Position:"))
        UiTranslate(0, 22)
        UiText(string.format("X: %g", tostring(GetPlayerPos()[1])))
        UiTranslate(0, 22)
        UiText(string.format("Y: %g", tostring(GetPlayerPos()[2])))
        UiTranslate(0, 22)
        UiText(string.format("Z: %g", tostring(GetPlayerPos()[3])))

        --PlayerHealth
        UiTranslate(0, 22)
        UiText(string.format("Health: %g", GetString("game.player.health")))
        UiPop()
    end
end
