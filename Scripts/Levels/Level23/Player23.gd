extends KinematicBody2D




func _on_TouchScreenButton_pressed():
	position = get_global_mouse_position()
