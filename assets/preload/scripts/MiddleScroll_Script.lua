function onUpdatePost()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true and not inGameOver then
	noteTweenX('note0', 0, 999999, 0.00001, "linear")
	noteTweenX('note1', 1, 999999, 0.00001, "linear")
	noteTweenX('note2', 2, 999999, 0.00001, "linear")
	noteTweenX('note3', 3, 999999, 0.00001, "linear")
	end
end

function onCreatePost()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true and getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	setProperty('botplayTxt.y', 170)
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == true and getPropertyFromClass('ClientPrefs', 'downScroll') == true then
	setProperty('botplayTxt.y', 520)
	end
end