extends Control

var brick = preload("res://Scenes/SpawnWall.tscn")

func _ready():
	Globals.level = 10
	LevelNames.display_level()
	
func _input(event):
	if event is InputEventScreenTouch:
		if (event.position.x > 0 and event.position.x < 288 * 3) and (event.position.y > 0 and event.position.y < 480):
			var brick_instance = brick.instance()
			brick_instance.position = Vector2(int(event.position.x/48) * 48, int(event.position.y/48) * 48)
			add_child(brick_instance)
