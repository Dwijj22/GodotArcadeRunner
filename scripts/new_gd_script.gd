extends CharacterBody2D

const GRAVITY = 1200.0
const JUMP_FORCE = -500.0
const SPEED = 200.0

func _physics_process(delta):
	# Apply gravity
	velocity.y += GRAVITY * delta

	# Constant forward motion (runner)
	velocity.x = SPEED

	# Jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_FORCE

	# Move with collision
	move_and_slide()
