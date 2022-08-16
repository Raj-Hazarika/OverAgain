extends Control


func _ready():
	Globals.level = 16
	LevelNames.display_level()
	
func _input(event):
	if event is InputEventScreenTouch:
		if event.position.x > 19*48 and event.position.x < 21*48:
			$Player.position = event.position
			LevelNames.display_level()
