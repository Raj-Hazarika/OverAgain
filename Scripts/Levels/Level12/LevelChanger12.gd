extends Node2D

func _ready():
	Globals.info = SavingData.load()


func _on_Area2D_body_entered(body):
	if "Player" in body.name and body.GHOST:
		Globals.change_level()
		var level_name = get_parent().name
		var level_num = int()
		if len(level_name) == 6:
			level_num = int(level_name[-1])
		if len(level_name) == 7:
			level_num = 10*int(level_name[-2])+ int(level_name[-1])
		if Globals.level_unlock(int(level_num)+1):
			Globals.info["unlocklevels"] = int(level_num)+1
			SavingData.save(Globals.info)
