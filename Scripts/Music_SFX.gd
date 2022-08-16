extends Node2D


func _ready():
	pass

func BG():
	if Globals.music:
		fade_in()
		$BG_Music.play()
	elif not Globals.music:
		$BG_Music.stop()

func fade_in():
	$Tween.interpolate_property($BG_Music, "volume_db", -80, -8, 2, 1, Tween.EASE_IN, 0)
	$Tween.start()

func door_open():
	if Globals.music:
		$DoorOpen.play()

func jump():
	if Globals.music:
		$Jump.play()
		
func click():
	if Globals.music:
		$Click.play()

func death():
	if Globals.music:
		$Death.play()

func walk():
	if Globals.music:
		$Walk.play()

func walk_stop():
	$Walk.stop()
