extends Control


func _ready():
	$AnimationPlayer.play("Fade")
	if not SavingData.loadgame():
		SavingData.save(Globals.info)
	var num = SavingData.loadgame()
	Globals.unlocklevels = num["unlocklevels"]
	LevelNames.hide()


func _on_PLAY_pressed():
	MusicSfx.click()
	LevelNames.view()
	Scenechange.change_scene("res://Scenes/Level1.tscn")


func _on_Levels_pressed():
	MusicSfx.click()
	Scenechange.change_scene("res://Scenes/LevelsMenu.tscn")


func _on_Hint_pressed():
	MusicSfx.click()
	OS.shell_open("https://youtu.be/uRFOHhEGCYE")


func _on_SETTINGS_pressed():
	MusicSfx.click()
	Scenechange.change_scene("res://Scenes/Settings.tscn")
