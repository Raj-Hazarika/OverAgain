extends Control


func _ready():
	$Door.collision_layer = 2
	Globals.level = 12
	LevelNames.display_level()

func hit():
	$Player/AnimatedSprite.modulate = Color(1, 1, 1, 0.4)
	$Player.GHOST = true

func _on_SpikeSingle_player_dead():
	hit()

func _on_SpikeSingle2_player_dead():
	hit()

func _on_SpikeSingle3_player_dead():
	hit()

func _on_SpikeSingle4_player_dead():
	hit()

