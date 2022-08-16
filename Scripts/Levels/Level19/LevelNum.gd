extends Label

var levelnumber = 0

signal LevelOK
signal LevelNotOK

func _ready():
	text = str(levelnumber) + "."


func _on_TouchScreenButton_pressed():
	levelnumber += 1
	_ready()
	if levelnumber == 19:
		emit_signal("LevelOK")
	else:
		emit_signal("LevelNotOK")
