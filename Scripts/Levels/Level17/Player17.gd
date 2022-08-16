extends KinematicBody2D

onready var anim_sprite = $AnimatedSprite

export var SPEED = 250
export var GRAVITY = 80
export var JUMP_HEIGHT = 1300 

var VELOCITY = Vector2.ZERO
var direction = 0

func _physics_process(delta):
	VELOCITY.x = direction * SPEED
	if VELOCITY.x:
		if direction > 0:
			anim_sprite.play("Run")
			anim_sprite.flip_h = false
		elif direction < 0:
			anim_sprite.play("Run")
			anim_sprite.flip_h = true
	elif not(is_on_floor()):
		anim_sprite.play("Jump")
	else:
		anim_sprite.play("Idle")
	
	if not(is_on_floor()):
		if VELOCITY.y < 900:
			VELOCITY.y += GRAVITY
		else:
			VELOCITY.y = 900
	elif is_on_floor():
		VELOCITY.y = 0
	if Input.is_action_just_pressed("ui_up"):
		VELOCITY.y -= JUMP_HEIGHT
			
	move_and_slide(VELOCITY, Vector2.UP)

func _on_Up_pressed():
	MusicSfx.jump()
	VELOCITY.y -= JUMP_HEIGHT
	move_and_slide(VELOCITY, Vector2.UP)

func _on_Right_pressed():
	direction = 1

func _on_Left_pressed():
	direction = -1

func _on_Right_released():
	direction = 0

func _on_Left_released():
	direction = 0
