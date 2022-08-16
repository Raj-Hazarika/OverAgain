extends Control


func _ready():
	pass

func _on_TouchScreenButton_pressed():
	MusicSfx.click()
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Settings.tscn")
