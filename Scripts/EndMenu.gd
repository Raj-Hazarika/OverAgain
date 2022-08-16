extends Control


func _ready():
	if not SavingData.load():
		SavingData.save(Globals.info)
	var num = SavingData.load()
	Globals.unlocklevels = num["unlocklevels"]
	LevelNames.hide()


func _on_PLAY_pressed():
	LevelNames.view()
	Scenechange.change_scene("res://Scenes/Level1.tscn")


func _on_Levels_pressed():
	Scenechange.change_scene("res://Scenes/LevelsMenu.tscn")

