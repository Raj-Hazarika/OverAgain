extends TouchScreenButton

var level_num = int()

func _ready():
	var num = SavingData.loadgame()
	Globals.unlocklevels = num["unlocklevels"]
	$Label.text = name
	level_num = name
	if int(name) <= int(Globals.unlocklevels):
		$Lock.visible = false

func _on_LevelsButton_pressed():
	if not $Lock.visible:
		MusicSfx.click()
		LevelNames.view()
		var level = "res://Scenes/Level"+str(level_num)+".tscn"
		Scenechange.change_scene(level)
