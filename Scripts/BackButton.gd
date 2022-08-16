extends Control


func _ready():
	pass


func _on_TouchScreenButton_pressed():
	MusicSfx.click()
	Scenechange.change_scene("res://Scenes/MainMenu.tscn")
