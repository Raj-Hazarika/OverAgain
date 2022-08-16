extends Node2D

func _ready():
	if not SavingData.loadgame():
		SavingData.save(Globals.info)
	var num = SavingData.loadgame()
	Globals.unlocklevels = num["unlocklevels"]


func _on_Area2D_body_entered(body):
	if "Player" in body.name:
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
