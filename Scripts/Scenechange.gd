extends CanvasLayer

onready var anim_player = $AnimationPlayer
onready var black = $Control/Black


func change_scene(path, delay = 0.5):
	layer = 0
	yield(get_tree().create_timer(delay), "timeout")
	anim_player.play("Fade")
	yield(anim_player, "animation_finished")
	assert(get_tree().change_scene(path) == OK)
	anim_player.play_backwards("Fade")

