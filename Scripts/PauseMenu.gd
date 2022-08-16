extends Control

onready var anim_pause = $PauseColor/AnimatedSprite
onready var anim_music = $Paused/BoxContainer/Music/AnimatedSprite

func _ready():
	anim_pause.play("Pause")
	if Globals.music:
		anim_music.play("Music")
	else:
		anim_music.play("Nomusic")


func _on_Pause_pressed():
	MusicSfx.click()
	var pause = not get_tree().paused
	get_tree().paused = pause
	$Paused.visible = pause
	if pause:
		anim_pause.play("Play")
	else:
		anim_pause.play("Pause")

func _on_Home_pressed():
	MusicSfx.click()
	get_tree().paused = false
	Scenechange.change_scene("res://Scenes/MainMenu.tscn")

func _on_Music_pressed():
	MusicSfx.click()
	Globals.music = not Globals.music
	if Globals.music:
		anim_music.play("Music")
	else:
		anim_music.play("Nomusic")
	MusicSfx.BG()

func _on_Levels_pressed():
	MusicSfx.click()
	get_tree().paused = false
	Scenechange.change_scene("res://Scenes/LevelsMenu.tscn")


func _on_Retry_pressed():
	MusicSfx.click()
	get_tree().paused = false
	get_tree().reload_current_scene()
