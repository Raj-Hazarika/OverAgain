extends Control


func _ready():
	Globals.level = 6
	LevelNames.display_level()
	var level_num = name[-1]
	Globals.level_unlock(int(level_num)+1)
	Globals.info["unlocklevels"] = int(level_num)+1
	SavingData.save(Globals.info)
