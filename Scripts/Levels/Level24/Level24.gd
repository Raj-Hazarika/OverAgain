extends Control

var DISPLAY = true

func _ready():
	Globals.level = 24
	LevelNames.display_level()

func _physics_process(delta):
	if not DISPLAY:
		$Key.position.x = $Player.position.x + 20
		$Key.position.y = $Player.position.y + 30
	

func _on_Key_key_collected():
	if DISPLAY:
		$AnimationPlayer.play("TextDisplay")
		DISPLAY = false
