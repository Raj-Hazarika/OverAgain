extends Control


func _ready():
	if Globals.music:
		$Music/AnimatedSprite.play("Music")
	else:
		$Music/AnimatedSprite.play("NoMusic")


func _on_Hints_pressed():
	MusicSfx.click()
	OS.shell_open("https://youtu.be/uRFOHhEGCYE")


func _on_Music_pressed():
	MusicSfx.click()
	Globals.music = not Globals.music
	if Globals.music:
		$Music/AnimatedSprite.play("Music")
	else:
		$Music/AnimatedSprite.play("NoMusic")
	MusicSfx.BG()


func _on_Credits_pressed():
	get_tree().paused = true
	MusicSfx.click()
	$CreditsShow.visible = not $CreditsShow.visible
