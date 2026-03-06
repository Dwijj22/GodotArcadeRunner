extends Area2D

var speed: float = 200.0

func _physics_process(delta):
	position.x -= speed * delta
	if position.x < -500: # off left side, adjust for your window
		queue_free()
