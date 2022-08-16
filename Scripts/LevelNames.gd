extends CanvasLayer


func _ready():
	pass
	
func display_level():
	var LevelNum = Globals.level
	$AnimationPlayer.play("Fade")
	$Label.text = Globals.LevelName[LevelNum - 1]

func hide():
	$Label.visible = false
	
func view():
	$Label.visible = true
