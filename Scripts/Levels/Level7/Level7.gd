extends Control


func _ready():
	Globals.level = 7
	LevelNames.display_level()
	$Timer.start()

func _on_Up_pressed():
	$Timer.stop()

func _on_Right_pressed():
	$Timer.stop()

func _on_Left_pressed():
	$Timer.stop()
